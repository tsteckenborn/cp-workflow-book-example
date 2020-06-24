/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"schnelleinstiegWorkflowBuch/sapui5AufgabenUI/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});