// Lesen der Antwort der Serviceaufgabe "Benutzerdaten ermitteln" aus dem Kontext des Workflow
var benutzerId = $.context.benutzer.id;
var benutzerDisplayName = $.context.benutzer.displayName;

// Erstellung eines neuen Knoten 'anfrageTeams'
var anfrageBeschreibung = {
	"body": {
		"contentType": "html",
		"content": "Es freut uns <at id=\"0\">" + $.context.benutzer.displayName +
			"</at> als Teil unseres Projektes begrüßen zu dürfen. <br><br>" + $.context.vorstellung.beruflich + "<br><br>" + $.context.vorstellung
			.persoenlich
	},
	"mentions": [{
		"id": 0,
		"mentionText": benutzerDisplayName,
		"mentioned": {
			"user": {
				"displayName": benutzerDisplayName,
				"id": benutzerId,
				"userIdentityType": "aadUser"
			}
		}
	}]
};

// Schreiben des 'anfrageBeschreibung' Knoten in den Kontext des Workflow
$.context.anfrageBeschreibung = anfrageBeschreibung;