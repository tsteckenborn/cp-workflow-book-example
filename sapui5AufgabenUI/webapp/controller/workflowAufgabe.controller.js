sap.ui.define([
	"sap/ui/core/mvc/Controller"
], function (Controller) {
	"use strict";

	return Controller.extend("schnelleinstiegWorkflowBuch.sapui5AufgabenUI.controller.workflowAufgabe", {
		onInit: function () {},

		handleLiveChangeBeruflich: function (oEvent) {
			this.getView().getModel().setProperty("/vorstellung/beruflich", oEvent.getParameter("value"));
		},

		handleLiveChangePersoenlich: function (oEvent) {
			this.getView().getModel().setProperty("/vorstellung/persoenlich", oEvent.getParameter("value"));
		}
	});
});