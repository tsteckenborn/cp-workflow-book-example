// Lesen der Antwort der Serviceaufgabe "Benutzerdaten ermitteln" aus dem Kontext des Workflow
var benutzerId = $.context.benutzer.id;

// Erstellung eines neuen Knoten 'anfrageTeams'
var anfrageTeams = {
	"@odata.id": "https://graph.microsoft.com/v1.0/directoryObjects/" + benutzerId
};

// Schreiben des 'anfrageTeams' Knoten in den Kontext des Workflow
$.context.anfrageTeams = anfrageTeams;