// Simulieren der Antwort von Microsoft Graph
var benutzer = { "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
"businessPhones": [
"+49 1111 1111111"
	],
"displayName": "Vorname Nachname",
"givenName": "Vorname",
"jobTitle": "Titel",
"mail": "mail@host.de",
"mobilePhone": "+49 111 1111111",
"officeLocation": null,
"preferredLanguage": "de-DE",
"surname": "Nachname",
"userPrincipalName": "mail@host.de",
"id": "1e1111c1-1ee1-1111-11fe-a11111f1ef11"};

// Schreiben des 'benutzer' Knotens in den Workflow-Kontext
$.context.benutzer = benutzer;
