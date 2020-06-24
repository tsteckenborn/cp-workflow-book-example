sap.ui.define([
	"sap/ui/core/UIComponent",
	"sap/ui/Device",
	"schnelleinstiegWorkflowBuch/sapui5AufgabenUI/model/models"
], function (UIComponent, Device, models) {
	"use strict";

	return UIComponent.extend("schnelleinstiegWorkflowBuch.sapui5AufgabenUI.Component", {

		metadata: {
			manifest: "json"
		},

		/**
		 * The component is initialized by UI5 automatically during the startup of the app and calls the init method once.
		 * @public
		 * @override
		 */
		init: function () {
			// call the base component's init function
			UIComponent.prototype.init.apply(this, arguments);

			// enable routing
			this.getRouter().initialize();

			// set the device model
			this.setModel(models.createDeviceModel(), "device");

			// get task data
			var startupParameters = this.getComponentData().startupParameters;
			var taskModel = startupParameters.taskModel;
			var taskData = taskModel.getData();
			var taskId = taskModel.getData().InstanceID;

			// read process context & bind it to the view's model
			var that = this;
			var contextModel = new sap.ui.model.json.JSONModel(
				"/schnelleinstiegWorkflowBuchsapui5AufgabenUI/bpmworkflowruntime/v1/task-instances/" +
				taskId + "/context");
			var contextData = contextModel
				.getData();
			contextData.vorstellung = {};

			// update the workflow context with task related information
			// note that this information is not persisted, but is available only  when the particular task UI is loaded
			// Since the model is loaded asynchronously we add the task related information in the call back function
			contextModel
				.attachRequestCompleted(function () {
					contextData = contextModel
						.getData();

					// Get task related data to be set in UI ObjectHeader

					contextData.task = {};
					contextData.task.Title = taskData.TaskTitle;
					contextData.task.PriorityText = taskData.PriorityText;
					contextData.task.StatusText = taskData.StatusText;

					// Get date on which task was created
					contextData.task.CreatedOn = taskData.CreatedOn
						.toDateString();

					// Get task description  and add it to the UI model
					startupParameters.inboxAPI
						.getDescription(
							"NA",
							taskData.InstanceID)
						.done(
							function (
								dataDescr) {
								contextData.task.Description = dataDescr.Description;
								contextModel
									.setData(contextData);
							})
						.fail(
							function (
								errorText) {
								jQuery.sap
									.require("sap.m.MessageBox");
								sap.m.MessageBox
									.error(
										errorText, {
											title: "Error"
										});
							});
				});

			contextModel
				.setDefaultBindingMode(sap.ui.model.BindingMode.OneWay);
			this.setModel(contextModel);

			startupParameters.inboxAPI.addAction({
				action: "APPROVE",
				label: "Akzeptieren",
				type: "positive"
			}, function (button) {
				this._completeTask(taskId, true, contextModel.getProperty("/vorstellung/persoenlich"), contextModel.getProperty(
						"/vorstellung/beruflich"),
					jQuery
					.proxy(
						// Call a local method  to refresh the task list in My Inbox
						that._refreshTask,
						that));
			}, this);

			if (startupParameters.oParameters.oQueryParameters.benutzer[0] === "pmo") {
				startupParameters.inboxAPI.addAction({
					action: "REJECT",
					label: "Zurückweisen",
					type: "negative"
				}, function (button) {
					this._completeTask(taskId, false, contextModel.getProperty("/vorstellung/persoenlich"), contextModel.getProperty(
							"/vorstellung/beruflich"),
						jQuery
						.proxy(
							// Call a local method to refresh the task list in My Inbox
							that._refreshTask,
							that));
				}, this);
			}
		},

		_fetchToken: function () {
			var token;
			$.ajax({
				url: "/schnelleinstiegWorkflowBuchsapui5AufgabenUI/bpmworkflowruntime/v1/xsrf-token",
				method: "GET",
				async: false,
				headers: {
					"X-CSRF-Token": "Fetch"
				},
				success: function (result, xhr, data) {
					token = data.getResponseHeader("X-CSRF-Token");
				}
			});
			return token;
		},
		_completeTask: function (taskId, approvalStatus, persoenlich, beruflich, refreshTask) {
			var token = this._fetchToken();
			$.ajax({
				url: "/schnelleinstiegWorkflowBuchsapui5AufgabenUI/bpmworkflowruntime/v1/task-instances/" + taskId,
				method: "PATCH",
				contentType: "application/json",
				async: false,
				data: "{\"status\": \"COMPLETED\", \"context\": {\"beschreibungAngenommen\":" + approvalStatus +
					", \"vorstellung\": {\"persoenlich\":" + JSON.stringify(persoenlich) + ",\"beruflich\":" + JSON.stringify(beruflich) + "}}}",
				headers: {
					"X-CSRF-Token": token
				},
				// refreshTask needs to be called on successful completion
				success: refreshTask
			});
		},
		// Request Inbox to refresh the control once the task is completed
		_refreshTask: function () {
			var taskId = this
				.getComponentData().startupParameters.taskModel
				.getData().InstanceID;
			this.getComponentData().startupParameters.inboxAPI
				.updateTask("NA", taskId);
		}
	});
});