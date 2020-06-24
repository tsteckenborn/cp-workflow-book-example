{
	"contents": {
		"31699b86-9ace-479f-b02a-d0e1277b3d9b": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "onboarding",
			"subject": "Onboarding von ${context.input.email}",
			"businessKey": "${context.input.email}",
			"name": "onboarding",
			"documentation": "Eine E-Mail-Adresse wird verwendet, um das Onboarding eines Projektmitglieds zu initiieren. Der Projektmitarbeiter wird in Microsoft Teams aufgenommen, erhält eine E-Mail zur Information und wird in einem Kanal vorgestellt.",
			"lastIds": "5b410040-6f08-4613-87e0-eff9672945c1",
			"events": {
				"c68bf524-df49-49c2-a0a8-cb4d68645145": {
					"name": "Startereignis"
				},
				"44d0caea-6e80-4b63-a22d-6a8e8abc00ca": {
					"name": "EndEvent1"
				},
				"af83f76f-4a93-45ea-b3c3-640dcaeab931": {
					"name": "Fälligkeitsdatum erreicht"
				},
				"b50ab972-a3d6-4b54-bccb-a5f7f790e139": {
					"name": "Endereignis"
				},
				"2d81789f-e732-4fc7-8cbc-182211f1e01b": {
					"name": "Onboarding abgelehnt"
				},
				"f1cb5c1a-c906-49c2-94c4-85d9e6b3b269": {
					"name": "Fälligkeitsdatum erreicht"
				}
			},
			"activities": {
				"6965f2a1-695b-4074-b249-204b29ab4ab7": {
					"name": "Onboarding genehmigen"
				},
				"777a1e48-d6b3-4bed-8740-507b3228c8d7": {
					"name": "Erinnerungsmail versenden"
				},
				"9454f0c9-6ee5-47e8-9479-2f4fe3bce811": {
					"name": "Genehmigung des Onboardings"
				},
				"c9b4c9e9-4fe8-4808-a9bd-e350745a32aa": {
					"name": "Ablehnungsmail versenden"
				},
				"8ad46834-9ab8-4f4b-bc2b-7114a2550752": {
					"name": "Parallelisierung der Onboardingschritte"
				},
				"f8c1eeeb-3b6a-4960-8edd-6e6adcea7d71": {
					"name": "Aufbereitung der Anfrage"
				},
				"bd8b84d8-2b7a-497c-a75a-e811b1bac9d1": {
					"name": "Projektmitglied zu Team hinzufügen"
				},
				"abbc5853-9db7-49e4-b741-352fe775c4c5": {
					"name": "Zusammenführung der Onboardingschritte"
				},
				"ab76db6b-a3be-4591-a63f-4e7183937363": {
					"name": "Willkommensmail versenden"
				},
				"fac87a2f-ad52-472c-8c75-f01ced2dae09": {
					"name": "Vorstellung für das Projekt erstellen"
				},
				"992bc3ef-39c5-4f8a-b542-9125f4b6a9fe": {
					"name": "Vorstellung überarbeiten und genehmigen"
				},
				"f78d78b9-c343-4379-9001-c60a56b154b5": {
					"name": "Genehmigung der Vorstellung"
				},
				"dbe848e0-c7e7-49d0-aa99-622c574cdbfc": {
					"name": "Aufbereitung der Vorstellung"
				},
				"ebf33eb3-17a7-43db-ab62-3b73d1caca10": {
					"name": "Veröffentlichung der Beschreibung in MS Teams"
				},
				"a1eae264-aab3-476c-8f44-c2d90d104a80": {
					"name": "Benutzerdaten ermitteln"
				}
			},
			"sequenceFlows": {
				"fc7712f7-bbaa-4fa3-b769-1de98e6d88e4": {
					"name": "SequenceFlow1"
				},
				"ae610fb3-a238-4fb5-b860-0295a3204c3e": {
					"name": "SequenceFlow7"
				},
				"6f5a6fff-8c98-412d-a0aa-664b9c38b424": {
					"name": "SequenceFlow8"
				},
				"e469380f-7dcf-4dbc-8ebd-110df34563d6": {
					"name": "SequenceFlow9"
				},
				"b3a459e7-def8-4d9d-9c35-9b05fceda326": {
					"name": "Abgelehnt"
				},
				"b57f196e-648b-497e-b649-91949f8eb23d": {
					"name": "SequenceFlow12"
				},
				"2a158679-d5c7-4f57-b327-d9f84388718b": {
					"name": "Genehmigt"
				},
				"b18b0a8d-4129-41d4-af1f-86e7f0a0cf46": {
					"name": "SequenceFlow16"
				},
				"ab6e28a0-f452-4c58-9a6d-13e7ba3faa52": {
					"name": "SequenceFlow17"
				},
				"5b210ce7-dc72-4f74-bd0e-2e8b7b9af140": {
					"name": "SequenceFlow18"
				},
				"06c49c9a-a344-494a-b6f9-6d88000c88a7": {
					"name": "SequenceFlow20"
				},
				"52368223-43f7-4801-aaab-d626feec7c90": {
					"name": "SequenceFlow21"
				},
				"fbdb5802-957e-4bcc-86ef-751502904487": {
					"name": "SequenceFlow22"
				},
				"4e81ec22-1801-4467-9e40-dac40486f528": {
					"name": "SequenceFlow23"
				},
				"6c00febb-a274-413d-a36f-e35b0ff09900": {
					"name": "SequenceFlow24"
				},
				"9e4c772c-34f4-4838-9658-b04097e7ce2e": {
					"name": "SequenceFlow25"
				},
				"72b8da6f-ab99-4eb9-b153-811ab3af92e1": {
					"name": "SequenceFlow26"
				},
				"1f8fb4ef-a6d5-429e-bf38-fd8413a6a084": {
					"name": "Abgelehnt"
				},
				"75792f87-9a2b-4745-b3ab-dcbd78683860": {
					"name": "Angenommen"
				},
				"e82cea56-dd9b-4fe0-820b-a1f72946a3c3": {
					"name": "SequenceFlow29"
				},
				"35b8e21c-6138-417d-a794-09830574fdba": {
					"name": "SequenceFlow30"
				},
				"b399d411-12a7-4e1a-9758-5558e97e245f": {
					"name": "SequenceFlow31"
				}
			},
			"diagrams": {
				"7ee07fde-878b-4af3-99f0-0573fa2bb888": {}
			}
		},
		"c68bf524-df49-49c2-a0a8-cb4d68645145": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Startereignis",
			"documentation": "Beginn des Workflows und Empfang der Startinformationen - eine E-Mail Adresse, die in der Benutzerverwaltung verfügbar ist.",
			"sampleContextRefs": {
				"0c032010-79bc-472b-932c-1426ff00b2f4": {}
			}
		},
		"44d0caea-6e80-4b63-a22d-6a8e8abc00ca": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"af83f76f-4a93-45ea-b3c3-640dcaeab931": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": false,
			"id": "boundarytimerevent1",
			"name": "Fälligkeitsdatum erreicht",
			"documentation": "Ereignis nach Erreichen des Fälligkeitsdatums für die Versendung einer Erinnerungsmail.",
			"attachedToRef": "6965f2a1-695b-4074-b249-204b29ab4ab7",
			"eventDefinitions": {
				"5195b76c-858b-4292-aafd-063827b86cac": {}
			}
		},
		"b50ab972-a3d6-4b54-bccb-a5f7f790e139": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "Endereignis",
			"documentation": "Ende des alternativen Ablaufs, zur Erinnerung, dass die Benutzeraufgabe fällig ist."
		},
		"2d81789f-e732-4fc7-8cbc-182211f1e01b": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "Onboarding abgelehnt",
			"documentation": "Terminierung des Workflows nach der Ablehnung des Onboardings.",
			"eventDefinitions": {
				"dd121b39-eadf-4548-9d77-7d38621d7822": {}
			}
		},
		"f1cb5c1a-c906-49c2-94c4-85d9e6b3b269": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": true,
			"id": "boundarytimerevent2",
			"name": "Fälligkeitsdatum erreicht",
			"documentation": "Abbruch und Eskalation der Aufgabe an das Projektmanagement Office, um eine zeitnahe Vorstellung zu gewährleisten.",
			"attachedToRef": "fac87a2f-ad52-472c-8c75-f01ced2dae09",
			"eventDefinitions": {
				"a64f36a5-28da-4ca8-a201-1126e534f11e": {}
			}
		},
		"6965f2a1-695b-4074-b249-204b29ab4ab7": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Genehmigung des Onboardings für ${context.benutzer.displayName}",
			"description": "Anfrage des Onboardings für ${context.benutzer.displayName} durch ${info.startedBy}.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "tobias.steckenborn@sap.com",
			"formReference": "/forms/GenehmigungUserTaskFormular.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "genehmigungusertaskformular"
			}, {
				"key": "formRevision",
				"value": "Draft"
			}],
			"id": "usertask1",
			"name": "Onboarding genehmigen",
			"documentation": "Genehmigung oder Ablehnung des beantragten Onboardings durch das Projektmanagement Office.",
			"dueDateRef": "5195b76c-858b-4292-aafd-063827b86cac"
		},
		"777a1e48-d6b3-4bed-8740-507b3228c8d7": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Erinnerungsmail versenden",
			"documentation": "Erinnerung der Verantwortlichen an die Genehmigung des Onboardings",
			"mailDefinitionRef": "36a47c52-4aff-4661-ac0e-f29667bc78f2"
		},
		"9454f0c9-6ee5-47e8-9479-2f4fe3bce811": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Genehmigung des Onboardings",
			"documentation": "Trennung in einen Ablauf zur Genehmigung oder Ablehnung.",
			"default": "2a158679-d5c7-4f57-b327-d9f84388718b"
		},
		"c9b4c9e9-4fe8-4808-a9bd-e350745a32aa": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "Ablehnungsmail versenden",
			"documentation": "Der Anfragende erhält eine E-Mail um ihn über die Ablehnung des Onboardings zu informieren.",
			"mailDefinitionRef": "9fcd583c-79e3-4294-8076-133588caa438"
		},
		"8ad46834-9ab8-4f4b-bc2b-7114a2550752": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "Parallelisierung der Onboardingschritte",
			"documentation": "Logische Parallelisierung der Onboarding-Schritte."
		},
		"f8c1eeeb-3b6a-4960-8edd-6e6adcea7d71": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/onboarding/vorbereitungBodyMitgliedHinzufuegen.js",
			"id": "scripttask1",
			"name": "Aufbereitung der Anfrage",
			"documentation": "Vorbereitung der Request Variable für die folgende Serviceaufgabe."
		},
		"bd8b84d8-2b7a-497c-a75a-e811b1bac9d1": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "MicrosoftGraph",
			"path": "/v1.0/groups/661bb2b3-c994-4251-9290-4f3fe0d4d5a7/members/$ref",
			"httpMethod": "POST",
			"requestVariable": "${context.anfrageTeams}",
			"responseVariable": "${context.antwortTeams}",
			"id": "servicetask2",
			"name": "Projektmitglied zu Team hinzufügen",
			"documentation": "Hinzufügen des Projektmitglieds zum Microsoft Teams Team.\nDie ID des Teams wurde zuvor über die Microsoft Graph API https://graph.microsoft.com/v1.0/me/joinedTeams unter https://developer.microsoft.com/graph/graph-explorer/ ermittelt.",
			"principalPropagationRef": "6965f2a1-695b-4074-b249-204b29ab4ab7"
		},
		"abbc5853-9db7-49e4-b741-352fe775c4c5": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway2",
			"name": "Zusammenführung der Onboardingschritte",
			"documentation": "Zusammenführung der parallelisierten Onboarding-Schritte."
		},
		"ab76db6b-a3be-4591-a63f-4e7183937363": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask3",
			"name": "Willkommensmail versenden",
			"documentation": "E-Mail zur Begrüßung des neuen Projektmitglieds",
			"mailDefinitionRef": "9d3fc5e7-5ebe-423d-b830-632a21a74a40"
		},
		"fac87a2f-ad52-472c-8c75-f01ced2dae09": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Vorstellung von ${context.benutzer.displayName}",
			"description": "Erstellung der eigenen Beschreibung für die Vorstellung im Microsoft Teams Kanal.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://schnelleinstiegWorkflowBuchsapui5AufgabenUI/schnelleinstiegWorkflowBuch.sapui5AufgabenUI",
			"recipientUsers": "${context.benutzer.mail}",
			"userInterfaceParams": [{
				"key": "benutzer",
				"value": "projektmitglied"
			}],
			"id": "usertask2",
			"name": "Vorstellung für das Projekt erstellen",
			"documentation": "In dieser Benutzeraufgabe erstellt der neue Projektmitarbeiter eine eigene Beschreibung für sich selbst.",
			"dueDateRef": "065b7844-f620-43b5-a05a-cb98abe6fb89"
		},
		"992bc3ef-39c5-4f8a-b542-9125f4b6a9fe": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Vorstellung von ${context.benutzer.displayName} überarbeiten und genehmigen",
			"description": "Die Beschreibung von ${context.benutzer.displayName} genehmigen oder ablehnen bzw. bei Bedarf überarbeiten.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://schnelleinstiegWorkflowBuchsapui5AufgabenUI/schnelleinstiegWorkflowBuch.sapui5AufgabenUI",
			"recipientUsers": "tobias.steckenborn@sap.com",
			"userInterfaceParams": [{
				"key": "benutzer",
				"value": "pmo"
			}],
			"id": "usertask3",
			"name": "Vorstellung überarbeiten und genehmigen",
			"documentation": "Das Project Management Office erhält die Beschreibung des neuen Projektmitglieds und genehmigt oder lehnt diese ab. Im Falle einer Eskalation oder zur Fehlerkorrektur kann das Projektmanagement Office die Vorstellung erstellen oder überarbeiten."
		},
		"f78d78b9-c343-4379-9001-c60a56b154b5": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Genehmigung der Vorstellung",
			"documentation": "Trennung in einen Ablauf zur Genehmigung oder Ablehnung.",
			"default": "75792f87-9a2b-4745-b3ab-dcbd78683860"
		},
		"dbe848e0-c7e7-49d0-aa99-622c574cdbfc": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/onboarding/aufbereitungVorstellung.js",
			"id": "scripttask2",
			"name": "Aufbereitung der Vorstellung",
			"documentation": "Aufbereitung der erstellten Vorstellung zur Nutzung in einer Serviceaufgabe."
		},
		"ebf33eb3-17a7-43db-ab62-3b73d1caca10": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "MicrosoftGraph",
			"path": "/beta/teams/661bb2b3-c994-4251-9290-4f3fe0d4d5a7/channels/19:baa96938f1644f0eb42811e454e6f4bc@thread.skype/messages",
			"httpMethod": "POST",
			"requestVariable": "${context.anfrageBeschreibung}",
			"responseVariable": "${context.antwortBeschreibung}",
			"id": "servicetask3",
			"name": "Veröffentlichung der Beschreibung in MS Teams",
			"documentation": "Veröffentlichung der Beschreibung im Allgemeinen Kanal des Teams durch das Projekt Management Office.\nDie ID des Teams wurde zuvor über die Microsoft Graph API https://graph.microsoft.com/v1.0/me/joinedTeams, die ID des Kanal über https://graph.microsoft.com/v1.0/teams/{{TeamId}}/channels unter https://developer.microsoft.com/graph/graph-explorer/ ermittelt.",
			"principalPropagationRef": "992bc3ef-39c5-4f8a-b542-9125f4b6a9fe"
		},
		"a1eae264-aab3-476c-8f44-c2d90d104a80": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/onboarding/benutzerdatenErmitteln.js",
			"id": "scripttask3",
			"name": "Benutzerdaten ermitteln",
			"documentation": "Ermittlung der Nutzerdaten für die E-Mail-Adresse. Dazu wird die Antwort der Microsoft Graph API mittels der Script Task simuliert."
		},
		"fc7712f7-bbaa-4fa3-b769-1de98e6d88e4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "c68bf524-df49-49c2-a0a8-cb4d68645145",
			"targetRef": "a1eae264-aab3-476c-8f44-c2d90d104a80"
		},
		"ae610fb3-a238-4fb5-b860-0295a3204c3e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "6965f2a1-695b-4074-b249-204b29ab4ab7",
			"targetRef": "9454f0c9-6ee5-47e8-9479-2f4fe3bce811"
		},
		"6f5a6fff-8c98-412d-a0aa-664b9c38b424": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "af83f76f-4a93-45ea-b3c3-640dcaeab931",
			"targetRef": "777a1e48-d6b3-4bed-8740-507b3228c8d7"
		},
		"e469380f-7dcf-4dbc-8ebd-110df34563d6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "777a1e48-d6b3-4bed-8740-507b3228c8d7",
			"targetRef": "b50ab972-a3d6-4b54-bccb-a5f7f790e139"
		},
		"b3a459e7-def8-4d9d-9c35-9b05fceda326": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision==\"ablehnen\"}",
			"id": "sequenceflow11",
			"name": "Abgelehnt",
			"documentation": "Ablauf bei Ablehnung des Onboardings",
			"sourceRef": "9454f0c9-6ee5-47e8-9479-2f4fe3bce811",
			"targetRef": "c9b4c9e9-4fe8-4808-a9bd-e350745a32aa"
		},
		"b57f196e-648b-497e-b649-91949f8eb23d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "c9b4c9e9-4fe8-4808-a9bd-e350745a32aa",
			"targetRef": "2d81789f-e732-4fc7-8cbc-182211f1e01b"
		},
		"2a158679-d5c7-4f57-b327-d9f84388718b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "Genehmigt",
			"documentation": "Ablauf bei Genehmigung des Onboardings",
			"sourceRef": "9454f0c9-6ee5-47e8-9479-2f4fe3bce811",
			"targetRef": "8ad46834-9ab8-4f4b-bc2b-7114a2550752"
		},
		"b18b0a8d-4129-41d4-af1f-86e7f0a0cf46": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "f8c1eeeb-3b6a-4960-8edd-6e6adcea7d71",
			"targetRef": "bd8b84d8-2b7a-497c-a75a-e811b1bac9d1"
		},
		"ab6e28a0-f452-4c58-9a6d-13e7ba3faa52": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "bd8b84d8-2b7a-497c-a75a-e811b1bac9d1",
			"targetRef": "abbc5853-9db7-49e4-b741-352fe775c4c5"
		},
		"5b210ce7-dc72-4f74-bd0e-2e8b7b9af140": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "abbc5853-9db7-49e4-b741-352fe775c4c5",
			"targetRef": "44d0caea-6e80-4b63-a22d-6a8e8abc00ca"
		},
		"06c49c9a-a344-494a-b6f9-6d88000c88a7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "8ad46834-9ab8-4f4b-bc2b-7114a2550752",
			"targetRef": "f8c1eeeb-3b6a-4960-8edd-6e6adcea7d71"
		},
		"52368223-43f7-4801-aaab-d626feec7c90": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "SequenceFlow21",
			"sourceRef": "8ad46834-9ab8-4f4b-bc2b-7114a2550752",
			"targetRef": "ab76db6b-a3be-4591-a63f-4e7183937363"
		},
		"fbdb5802-957e-4bcc-86ef-751502904487": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow22",
			"name": "SequenceFlow22",
			"sourceRef": "ab76db6b-a3be-4591-a63f-4e7183937363",
			"targetRef": "44d0caea-6e80-4b63-a22d-6a8e8abc00ca"
		},
		"4e81ec22-1801-4467-9e40-dac40486f528": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "SequenceFlow23",
			"sourceRef": "8ad46834-9ab8-4f4b-bc2b-7114a2550752",
			"targetRef": "fac87a2f-ad52-472c-8c75-f01ced2dae09"
		},
		"6c00febb-a274-413d-a36f-e35b0ff09900": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "f1cb5c1a-c906-49c2-94c4-85d9e6b3b269",
			"targetRef": "992bc3ef-39c5-4f8a-b542-9125f4b6a9fe"
		},
		"9e4c772c-34f4-4838-9658-b04097e7ce2e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "SequenceFlow25",
			"sourceRef": "fac87a2f-ad52-472c-8c75-f01ced2dae09",
			"targetRef": "992bc3ef-39c5-4f8a-b542-9125f4b6a9fe"
		},
		"72b8da6f-ab99-4eb9-b153-811ab3af92e1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "992bc3ef-39c5-4f8a-b542-9125f4b6a9fe",
			"targetRef": "f78d78b9-c343-4379-9001-c60a56b154b5"
		},
		"1f8fb4ef-a6d5-429e-bf38-fd8413a6a084": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.beschreibungAngenommen==\"false\"}",
			"id": "sequenceflow27",
			"name": "Abgelehnt",
			"documentation": "Beschreibung abgelehnt und an das neue Projektmitglied zur Bearbeitung zurückgegeben",
			"sourceRef": "f78d78b9-c343-4379-9001-c60a56b154b5",
			"targetRef": "fac87a2f-ad52-472c-8c75-f01ced2dae09"
		},
		"75792f87-9a2b-4745-b3ab-dcbd78683860": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "Angenommen",
			"documentation": "Beschreibung in dieser Form vom Project Management Office akzeptiert.",
			"sourceRef": "f78d78b9-c343-4379-9001-c60a56b154b5",
			"targetRef": "dbe848e0-c7e7-49d0-aa99-622c574cdbfc"
		},
		"e82cea56-dd9b-4fe0-820b-a1f72946a3c3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "SequenceFlow29",
			"sourceRef": "dbe848e0-c7e7-49d0-aa99-622c574cdbfc",
			"targetRef": "ebf33eb3-17a7-43db-ab62-3b73d1caca10"
		},
		"35b8e21c-6138-417d-a794-09830574fdba": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow30",
			"name": "SequenceFlow30",
			"sourceRef": "ebf33eb3-17a7-43db-ab62-3b73d1caca10",
			"targetRef": "abbc5853-9db7-49e4-b741-352fe775c4c5"
		},
		"b399d411-12a7-4e1a-9758-5558e97e245f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow31",
			"name": "SequenceFlow31",
			"sourceRef": "a1eae264-aab3-476c-8f44-c2d90d104a80",
			"targetRef": "6965f2a1-695b-4074-b249-204b29ab4ab7"
		},
		"7ee07fde-878b-4af3-99f0-0573fa2bb888": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"43645263-100b-4333-ae0d-80d4f9300e22": {},
				"1fb2f51b-7f1c-4fc6-ab70-86ac499520c1": {},
				"45166cef-fd22-4247-af43-936d1fb3ea8b": {},
				"5f024842-6f9e-45df-ad42-9f0c46e344b1": {},
				"fe3c31be-da95-4e2f-be20-5a715f1fae9a": {},
				"e499580c-f751-4abd-bb03-31a0ce5f54b8": {},
				"6711f4ff-7bc7-416b-af91-cca87ea2c5f9": {},
				"c99e8673-4c78-4312-964c-c545cf5b8b5e": {},
				"77b454db-f9d7-4e04-a336-bfb5b3f0e6d6": {},
				"af46ff46-2fe4-475b-bdd9-d41b035fc965": {},
				"416f371d-7ff5-4bf5-92dd-f5cbba305b5c": {},
				"0acac8b9-fbae-479a-b4b2-b8bf5d4970ad": {},
				"25e8d327-fbaa-43d9-a953-03199dec15f1": {},
				"428b77ba-252d-48b2-b681-ef58143f2eae": {},
				"c85e198c-62c1-49a5-b985-eb5470048313": {},
				"434135af-c9ca-4380-9487-59ced9d393e9": {},
				"e733955f-64b4-4076-ad8c-0d1071986e6a": {},
				"9f0a8f36-5022-4224-bb97-635f942607c1": {},
				"f39b9873-b42d-4f48-bd36-9a6d2a149b42": {},
				"af7e6564-e71f-4691-848d-c916b12adf2d": {},
				"60f88c71-ee91-493e-8819-993d628a24f5": {},
				"c392486d-a88c-488c-83ff-3a2bbfc27e0c": {},
				"4ae9ad29-1e0f-4741-b4b2-6030c010b99a": {},
				"dbe350d7-99bd-4b2d-95c4-5ca981d8297f": {},
				"8b61d053-a47a-423c-b12e-709e2e008c9f": {},
				"d0df3f32-2b9d-4a4e-a651-d17fe5ba1089": {},
				"47d37065-ed49-40c3-99ab-31040fa2b061": {},
				"20bf72af-5dec-4e0c-9f78-5ce1a602dec5": {},
				"30b09115-086a-4d1f-9a8a-eaba5997bb82": {},
				"e44a1399-d205-4269-9c53-2c1c3400061f": {},
				"9b12214e-60d9-4cd9-a4a8-9950dd8e70b1": {},
				"750cd169-b016-4cc3-a652-468d18e827f7": {},
				"738040f5-d081-411f-b8f8-95244f53c802": {},
				"a8f43149-5fc7-444d-a4b6-9b1a053e99e1": {},
				"79f2baa3-1807-4e12-9b2a-591295c435e9": {},
				"712ea244-ec83-46aa-9cc1-499845b48791": {},
				"8e084534-45ed-439d-87d2-e31524bbced2": {},
				"31b64370-5551-4107-926b-09052e662cd8": {},
				"c9f14d18-336f-45d9-84a3-07670894f73e": {},
				"c69d72e9-b5eb-49a0-a4c2-8c523cfef1ad": {},
				"f15f3003-58a0-41e8-93b5-60ae58aeb301": {}
			}
		},
		"0c032010-79bc-472b-932c-1426ff00b2f4": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/onboarding/onboardingBeispielKontext.json",
			"id": "default-start-context"
		},
		"5195b76c-858b-4292-aafd-063827b86cac": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P3D",
			"id": "timereventdefinition1"
		},
		"dd121b39-eadf-4548-9d77-7d38621d7822": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"a64f36a5-28da-4ca8-a201-1126e534f11e": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P5D",
			"id": "timereventdefinition4"
		},
		"43645263-100b-4333-ae0d-80d4f9300e22": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 85.99999970197678,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "c68bf524-df49-49c2-a0a8-cb4d68645145"
		},
		"1fb2f51b-7f1c-4fc6-ab70-86ac499520c1": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 84.49999970197678,
			"y": 799.9999976158142,
			"width": 35,
			"height": 35,
			"object": "44d0caea-6e80-4b63-a22d-6a8e8abc00ca"
		},
		"45166cef-fd22-4247-af43-936d1fb3ea8b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "101.99999970197678,28 101.99999955296516,109.99999940395355",
			"sourceSymbol": "43645263-100b-4333-ae0d-80d4f9300e22",
			"targetSymbol": "c69d72e9-b5eb-49a0-a4c2-8c523cfef1ad",
			"object": "fc7712f7-bbaa-4fa3-b769-1de98e6d88e4"
		},
		"5f024842-6f9e-45df-ad42-9f0c46e344b1": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 51.99999940395355,
			"y": 175.9999988079071,
			"width": 100,
			"height": 60,
			"object": "6965f2a1-695b-4074-b249-204b29ab4ab7",
			"symbols": {
				"9efcad36-f6bd-423d-8d3e-16fe49db6b27": {}
			}
		},
		"fe3c31be-da95-4e2f-be20-5a715f1fae9a": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": -89.00000044703484,
			"y": 182.74999821186066,
			"width": 100,
			"height": 60,
			"object": "777a1e48-d6b3-4bed-8740-507b3228c8d7"
		},
		"e499580c-f751-4abd-bb03-31a0ce5f54b8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "103.49999947845936,205.9999988079071 103.49999947845936,304.74999821186066",
			"sourceSymbol": "5f024842-6f9e-45df-ad42-9f0c46e344b1",
			"targetSymbol": "af46ff46-2fe4-475b-bdd9-d41b035fc965",
			"object": "ae610fb3-a238-4fb5-b860-0295a3204c3e"
		},
		"6711f4ff-7bc7-416b-af91-cca87ea2c5f9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "35.99999940395355,212.9999988079071 23.5,213 23.5,212.75 -39.000000447034836,212.74999821186066",
			"sourceSymbol": "9efcad36-f6bd-423d-8d3e-16fe49db6b27",
			"targetSymbol": "fe3c31be-da95-4e2f-be20-5a715f1fae9a",
			"object": "6f5a6fff-8c98-412d-a0aa-664b9c38b424"
		},
		"c99e8673-4c78-4312-964c-c545cf5b8b5e": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": -153.00000044703484,
			"y": 195.24999821186066,
			"width": 35,
			"height": 35,
			"object": "b50ab972-a3d6-4b54-bccb-a5f7f790e139"
		},
		"77b454db-f9d7-4e04-a336-bfb5b3f0e6d6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-39.000000447034836,212.74999821186066 -135.50000044703484,212.74999821186066",
			"sourceSymbol": "fe3c31be-da95-4e2f-be20-5a715f1fae9a",
			"targetSymbol": "c99e8673-4c78-4312-964c-c545cf5b8b5e",
			"object": "e469380f-7dcf-4dbc-8ebd-110df34563d6"
		},
		"af46ff46-2fe4-475b-bdd9-d41b035fc965": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 83.99999955296516,
			"y": 283.74999821186066,
			"object": "9454f0c9-6ee5-47e8-9479-2f4fe3bce811"
		},
		"416f371d-7ff5-4bf5-92dd-f5cbba305b5c": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": -89,
			"y": 275,
			"width": 100,
			"height": 60,
			"object": "c9b4c9e9-4fe8-4808-a9bd-e350745a32aa"
		},
		"0acac8b9-fbae-479a-b4b2-b8bf5d4970ad": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "104.99999955296516,304.8749991059303 -39,304.8749991059303",
			"sourceSymbol": "af46ff46-2fe4-475b-bdd9-d41b035fc965",
			"targetSymbol": "416f371d-7ff5-4bf5-92dd-f5cbba305b5c",
			"object": "b3a459e7-def8-4d9d-9c35-9b05fceda326"
		},
		"25e8d327-fbaa-43d9-a953-03199dec15f1": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": -153,
			"y": 287.5,
			"width": 35,
			"height": 35,
			"object": "2d81789f-e732-4fc7-8cbc-182211f1e01b"
		},
		"428b77ba-252d-48b2-b681-ef58143f2eae": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-39,305 -135.5,305",
			"sourceSymbol": "416f371d-7ff5-4bf5-92dd-f5cbba305b5c",
			"targetSymbol": "25e8d327-fbaa-43d9-a953-03199dec15f1",
			"object": "b57f196e-648b-497e-b649-91949f8eb23d"
		},
		"c85e198c-62c1-49a5-b985-eb5470048313": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 84.49999955296516,
			"y": 417.74999821186066,
			"object": "8ad46834-9ab8-4f4b-bc2b-7114a2550752"
		},
		"434135af-c9ca-4380-9487-59ced9d393e9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "105.24999955296516,325.74999821186066 105.24999955296516,417.74999821186066",
			"sourceSymbol": "af46ff46-2fe4-475b-bdd9-d41b035fc965",
			"targetSymbol": "c85e198c-62c1-49a5-b985-eb5470048313",
			"object": "2a158679-d5c7-4f57-b327-d9f84388718b"
		},
		"e733955f-64b4-4076-ad8c-0d1071986e6a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 51.74999962747097,
			"y": 523.3749979138374,
			"width": 100,
			"height": 60,
			"object": "f8c1eeeb-3b6a-4960-8edd-6e6adcea7d71"
		},
		"9f0a8f36-5022-4224-bb97-635f942607c1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "101.81249964609742,553.3749979138374 101.81249964609742,646.4374977648258",
			"sourceSymbol": "e733955f-64b4-4076-ad8c-0d1071986e6a",
			"targetSymbol": "f39b9873-b42d-4f48-bd36-9a6d2a149b42",
			"object": "b18b0a8d-4129-41d4-af1f-86e7f0a0cf46"
		},
		"f39b9873-b42d-4f48-bd36-9a6d2a149b42": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 51.87499966472387,
			"y": 616.4374977648258,
			"width": 100,
			"height": 60,
			"object": "bd8b84d8-2b7a-497c-a75a-e811b1bac9d1"
		},
		"af7e6564-e71f-4691-848d-c916b12adf2d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "101.9062496740371,646.4374977648258 101.9062496740371,724.96874769032",
			"sourceSymbol": "f39b9873-b42d-4f48-bd36-9a6d2a149b42",
			"targetSymbol": "60f88c71-ee91-493e-8819-993d628a24f5",
			"object": "ab6e28a0-f452-4c58-9a6d-13e7ba3faa52"
		},
		"60f88c71-ee91-493e-8819-993d628a24f5": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 80.93749968335032,
			"y": 703.96874769032,
			"object": "abbc5853-9db7-49e4-b741-352fe775c4c5"
		},
		"c392486d-a88c-488c-83ff-3a2bbfc27e0c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "101.96874969266355,724.96874769032 101.96874969266355,817.4999976158142",
			"sourceSymbol": "60f88c71-ee91-493e-8819-993d628a24f5",
			"targetSymbol": "1fb2f51b-7f1c-4fc6-ab70-86ac499520c1",
			"object": "5b210ce7-dc72-4f74-bd0e-2e8b7b9af140"
		},
		"4ae9ad29-1e0f-4741-b4b2-6030c010b99a": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 174.62499959021807,
			"y": 616.312498062849,
			"width": 100,
			"height": 60,
			"object": "ab76db6b-a3be-4591-a63f-4e7183937363"
		},
		"dbe350d7-99bd-4b2d-95c4-5ca981d8297f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "103.62499959021807,438.74999821186066 103.62499959021807,553.3749979138374",
			"sourceSymbol": "c85e198c-62c1-49a5-b985-eb5470048313",
			"targetSymbol": "e733955f-64b4-4076-ad8c-0d1071986e6a",
			"object": "06c49c9a-a344-494a-b6f9-6d88000c88a7"
		},
		"8b61d053-a47a-423c-b12e-709e2e008c9f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "105.49999955296516,438.74999821186066 224.99999980525772,438.74999767378665 225.00000025229255,538.0312494619259 224.625,538.03125 224.62499959021807,646.312498062849",
			"sourceSymbol": "c85e198c-62c1-49a5-b985-eb5470048313",
			"targetSymbol": "4ae9ad29-1e0f-4741-b4b2-6030c010b99a",
			"object": "52368223-43f7-4801-aaab-d626feec7c90"
		},
		"d0df3f32-2b9d-4a4e-a651-d17fe5ba1089": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "224.62499959021807,646.312498062849 224.625,818 102,818",
			"sourceSymbol": "4ae9ad29-1e0f-4741-b4b2-6030c010b99a",
			"targetSymbol": "1fb2f51b-7f1c-4fc6-ab70-86ac499520c1",
			"object": "fbdb5802-957e-4bcc-86ef-751502904487"
		},
		"47d37065-ed49-40c3-99ab-31040fa2b061": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": -89,
			"y": 409,
			"width": 100,
			"height": 60,
			"object": "fac87a2f-ad52-472c-8c75-f01ced2dae09",
			"symbols": {
				"1cecac9b-50f3-4dc1-8696-a636b318b729": {}
			}
		},
		"20bf72af-5dec-4e0c-9f78-5ce1a602dec5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "105.49999955296516,438.8749991059303 -39,438.8749991059303",
			"sourceSymbol": "c85e198c-62c1-49a5-b985-eb5470048313",
			"targetSymbol": "47d37065-ed49-40c3-99ab-31040fa2b061",
			"object": "4e81ec22-1801-4467-9e40-dac40486f528"
		},
		"30b09115-086a-4d1f-9a8a-eaba5997bb82": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": -213,
			"y": 409,
			"width": 100,
			"height": 60,
			"object": "992bc3ef-39c5-4f8a-b542-9125f4b6a9fe"
		},
		"e44a1399-d205-4269-9c53-2c1c3400061f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-39,485 -39,497 -102,497 -102,439 -163,439",
			"sourceSymbol": "1cecac9b-50f3-4dc1-8696-a636b318b729",
			"targetSymbol": "30b09115-086a-4d1f-9a8a-eaba5997bb82",
			"object": "6c00febb-a274-413d-a36f-e35b0ff09900"
		},
		"9b12214e-60d9-4cd9-a4a8-9950dd8e70b1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-39,439 -163,439",
			"sourceSymbol": "47d37065-ed49-40c3-99ab-31040fa2b061",
			"targetSymbol": "30b09115-086a-4d1f-9a8a-eaba5997bb82",
			"object": "9e4c772c-34f4-4838-9658-b04097e7ce2e"
		},
		"750cd169-b016-4cc3-a652-468d18e827f7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": -184,
			"y": 485,
			"object": "f78d78b9-c343-4379-9001-c60a56b154b5"
		},
		"738040f5-d081-411f-b8f8-95244f53c802": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-163,439 -163,506",
			"sourceSymbol": "30b09115-086a-4d1f-9a8a-eaba5997bb82",
			"targetSymbol": "750cd169-b016-4cc3-a652-468d18e827f7",
			"object": "72b8da6f-ab99-4eb9-b153-811ab3af92e1"
		},
		"a8f43149-5fc7-444d-a4b6-9b1a053e99e1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-163,506 -8,506 -8,439",
			"sourceSymbol": "750cd169-b016-4cc3-a652-468d18e827f7",
			"targetSymbol": "47d37065-ed49-40c3-99ab-31040fa2b061",
			"object": "1f8fb4ef-a6d5-429e-bf38-fd8413a6a084"
		},
		"79f2baa3-1807-4e12-9b2a-591295c435e9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -218,
			"y": 616,
			"width": 100,
			"height": 60,
			"object": "dbe848e0-c7e7-49d0-aa99-622c574cdbfc"
		},
		"712ea244-ec83-46aa-9cc1-499845b48791": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-165.5,506 -165.5,646",
			"sourceSymbol": "750cd169-b016-4cc3-a652-468d18e827f7",
			"targetSymbol": "79f2baa3-1807-4e12-9b2a-591295c435e9",
			"object": "75792f87-9a2b-4745-b3ab-dcbd78683860"
		},
		"8e084534-45ed-439d-87d2-e31524bbced2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -89,
			"y": 616,
			"width": 100,
			"height": 60,
			"object": "ebf33eb3-17a7-43db-ab62-3b73d1caca10"
		},
		"31b64370-5551-4107-926b-09052e662cd8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-168,646 -39,646",
			"sourceSymbol": "79f2baa3-1807-4e12-9b2a-591295c435e9",
			"targetSymbol": "8e084534-45ed-439d-87d2-e31524bbced2",
			"object": "e82cea56-dd9b-4fe0-820b-a1f72946a3c3"
		},
		"c9f14d18-336f-45d9-84a3-07670894f73e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-43,646 -43,724.96875 101.93749968335032,724.96874769032",
			"sourceSymbol": "8e084534-45ed-439d-87d2-e31524bbced2",
			"targetSymbol": "60f88c71-ee91-493e-8819-993d628a24f5",
			"object": "35b8e21c-6138-417d-a794-09830574fdba"
		},
		"c69d72e9-b5eb-49a0-a4c2-8c523cfef1ad": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 51.999999552965164,
			"y": 79.99999940395355,
			"width": 100,
			"height": 60,
			"object": "a1eae264-aab3-476c-8f44-c2d90d104a80"
		},
		"f15f3003-58a0-41e8-93b5-60ae58aeb301": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "101.99999955296516,109.99999940395355 101.99999940395355,205.9999988079071",
			"sourceSymbol": "c69d72e9-b5eb-49a0-a4c2-8c523cfef1ad",
			"targetSymbol": "5f024842-6f9e-45df-ad42-9f0c46e344b1",
			"object": "b399d411-12a7-4e1a-9758-5558e97e245f"
		},
		"9efcad36-f6bd-423d-8d3e-16fe49db6b27": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 35.99999940395355,
			"y": 196.9999988079071,
			"object": "af83f76f-4a93-45ea-b3c3-640dcaeab931"
		},
		"1cecac9b-50f3-4dc1-8696-a636b318b729": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": -55,
			"y": 453,
			"object": "f1cb5c1a-c906-49c2-94c4-85d9e6b3b269"
		},
		"5b410040-6f08-4613-87e0-eff9672945c1": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"timereventdefinition": 4,
			"maildefinition": 3,
			"sequenceflow": 31,
			"startevent": 1,
			"boundarytimerevent": 2,
			"endevent": 3,
			"usertask": 3,
			"servicetask": 3,
			"scripttask": 3,
			"mailtask": 3,
			"exclusivegateway": 2,
			"parallelgateway": 2
		},
		"36a47c52-4aff-4661-ac0e-f29667bc78f2": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${usertasks.usertask1.last.recipientUsers}",
			"cc": "",
			"bcc": "",
			"subject": "Genehmigung des Onboardings für ${context.benutzer.displayName} überfällig",
			"text": "Die Freigabe des Onboardings für ${context.user.displayName} ist seit dem ${usertasks.usertask1.last.dueDate} überfällig. \n\nBitte genehmigen oder lehnen Sie sie umgehend ab.",
			"ignoreInvalidRecipients": true,
			"id": "maildefinition1"
		},
		"9fcd583c-79e3-4294-8076-133588caa438": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "${info.startedBy}",
			"cc": "${usertasks.usertask1.last.recipientUsers}",
			"subject": "Onboarding von ${context.benutzer.displayName} abgelehnt",
			"text": "Das Onboarding von ${context.benutzer.displayName} wurde abgelehnt.",
			"ignoreInvalidRecipients": true,
			"id": "maildefinition2"
		},
		"9d3fc5e7-5ebe-423d-b830-632a21a74a40": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "${context.benutzer.mail}",
			"cc": "${usertasks.usertask1.last.recipientUsers}",
			"subject": "Willkommen im Projekt!",
			"reference": "/webcontent/onboarding/willkommensmail.html",
			"ignoreInvalidRecipients": true,
			"id": "maildefinition3"
		},
		"065b7844-f620-43b5-a05a-cb98abe6fb89": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P3D",
			"id": "timereventdefinition3"
		}
	}
}