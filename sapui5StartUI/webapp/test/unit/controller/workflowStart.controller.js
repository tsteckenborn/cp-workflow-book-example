/*global QUnit*/

sap.ui.define([
	"schnelleinstiegWorkflowBuch/sapui5StartUI/controller/workflowStart.controller"
], function (Controller) {
	"use strict";

	QUnit.module("workflowStart Controller");

	QUnit.test("I should test the workflowStart controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});