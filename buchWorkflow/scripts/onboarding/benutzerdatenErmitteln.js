// Simulieren der Antwort von Microsoft Graph
var benutzer = {
	"@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
	"businessPhones": [
		"+49 6232 1212201"
	],
	"displayName": "Albert Steckenborn",
	"givenName": "Albert",
	"jobTitle": "Geschäftsführer",
	"mail": "albert.steckenborn@consolvis.de",
	"mobilePhone": "+49 171 1206180",
	"officeLocation": null,
	"preferredLanguage": "de-DE",
	"surname": "Steckenborn",
	"userPrincipalName": "albert.steckenborn@consolvis.de",
	"id": "9e4318c0-6ee1-4928-82fe-a04113f4ef79"
};

// Schreiben des 'benutzer' Knotens in den Workflow-Kontext
$.context.benutzer = benutzer;