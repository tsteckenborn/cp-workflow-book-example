/*global QUnit*/

sap.ui.define([
	"schnelleinstiegWorkflowBuch/sapui5AufgabenUI/controller/workflowAufgabe.controller"
], function (Controller) {
	"use strict";

	QUnit.module("workflowAufgabe Controller");

	QUnit.test("I should test the workflowAufgabe controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});