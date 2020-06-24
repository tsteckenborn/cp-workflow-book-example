sap.ui.define(["jquery.sap.global", "sap/m/MessageBox", "sap/m/MessageToast", "sap/ui/core/mvc/Controller", "sap/ui/model/SimpleType",
	"sap/ui/model/ValidateException", "sap/ui/model/json/JSONModel"
], function (jQuery, MessageBox, MessageToast, Controller, SimpleType, ValidateException, JSONModel) {
	"use strict";

	return Controller.extend("schnelleinstiegWorkflowBuch.sapui5StartUI.controller.workflowStart", {
		onInit: function () {
			this.getView().setModel(new sap.ui.model.json.JSONModel({
				email: "",
				result: ""
			}));

			// Handler für Validierungsfehler anbinden können
			sap.ui.getCore().getMessageManager().registerObject(this.oView.byId("emailInput"), true);
		},

		onButtonClick: function () {
			// Eingabefelder sammeln
			var that = this;
			var oView = this.getView();
			var aInputs = [
				oView.byId("emailInput")
			];
			var bValidationError = false;

			// prüfen, dass die Eingaben nicht leer oder falsch sind
			jQuery.each(aInputs, function (i, oInput) {
				bValidationError = that._validateInput(oInput) || bValidationError;
			});

			// Ergebnis ausgeben
			if (!bValidationError) {
				var token = this._fetchToken();
				this._startInstance(token);
			} else {
				MessageBox.alert("Du hast keine korrekte E-Mail-Adresse eingegeben. Bitte korrigieren deine Eingabe.");
			}

		},

		_validateInput: function (oInput) {
			var oBinding = oInput.getBinding("value");
			var sValueState = "None";
			var bValidationError = false;

			try {
				oBinding.getType().validateValue(oInput.getValue());
			} catch (oException) {
				sValueState = "Error";
				bValidationError = true;
			}

			oInput.setValueState(sValueState);

			return bValidationError;
		},

		_startInstance: function (token) {
			var model = this.getView().getModel();
			var input = '{ "input": { "email":"' + model.getProperty("/email") + '"}}';
			var contextJson = JSON.parse(input);
			$.ajax({
				url: "/schnelleinstiegWorkflowBuchsapui5StartUI/bpmworkflowruntime/v1/workflow-instances",
				method: "POST",
				async: false,
				contentType: "application/json",
				headers: {
					"X-CSRF-Token": token
				},
				data: JSON.stringify({
					definitionId: "onboarding",
					context: contextJson
				}),
				success: function (result, xhr, data) {
					model.setProperty("/result", JSON.stringify(result, null, 4));
				}
			});
		},

		_fetchToken: function () {
			var token;
			$.ajax({
				url: "/schnelleinstiegWorkflowBuchsapui5StartUI/bpmworkflowruntime/v1/xsrf-token",
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
		/**
		 * Benutzerdefinierter Typ für die Validierung einer E-Mail-Adresse
		 * @class
		 * @extends sap.ui.model.SimpleType
		 */
		customEMailType: SimpleType.extend("email", {
			formatValue: function (oValue) {
				return oValue;
			},
			parseValue: function (oValue) {
				//parsing step takes place before validating step, value could be altered here
				return oValue;
			},
			validateValue: function (oValue) {
				// The following Regex is NOT a completely correct one and only used for demonstration purposes.
				// RFC 5322 cannot even checked by a Regex and the Regex for RFC 822 is very long and complex.
				var rexMail = /^\w+[\w-+\.]*\@\w+([-\.]\w+)*\.[a-zA-Z]{2,}$/;
				if (!oValue.match(rexMail)) {
					throw new ValidateException("'" + oValue + "' ist keine korrekte E-Mail-Adresse.");
				}
			}
		})
	});
});