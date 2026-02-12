Instance: dosage-example
InstanceOf: CHEMEDMedicationStatementCard
Title: "Posology"
Description: "Example of a Dosage - eMedication Plan ChMed Posology Example"
Usage: #example
* contained = Beloczok
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ed4f417e-2488-4588-b172-c394bde1d60e"
* status = #active
* medicationReference.reference = "#Beloczok"
* subject = "Patient/MonikaWegmueller"

* dateAsserted = "2011-11-29T11:00:00+01:00"
* informationSource.reference = "PractitionerRole/FamilienHausarztAtHausarzt"

* dosage[baseEntry][+].extension[+].url = "http://pjolo/cm-emed_fork/StructureDefinition/chmed-posology-detail-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-vs-posology-detail-object-type#1 "Daily"
* dosage[baseEntry][=].timing.repeat.when[+] = #MORN
* dosage[baseEntry][=].timing.repeat.when[+] = #EVE

* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"