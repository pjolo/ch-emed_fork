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
* subject.reference = "Patient/MonikaWegmueller"

* dateAsserted = "2011-11-29T11:00:00+01:00"
* informationSource.reference = "PractitionerRole/FamilienHausarztAtHausarzt"

// Eextension CHMED23A Posology
* dosage[baseEntry][+].extension[+].url = "http://pjolo/cm-emed_fork/StructureDefinition/chmed-posology-detail-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-vs-posology-detail-object-type#1 "Daily"

// ERSTES Dosage Element (sequence 1): Morgen-Dosis mit gemeinsamen Informationen
* dosage[baseEntry].sequence = 1
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2024-02-12"
* dosage[baseEntry].timing.repeat.when = #MORN
* dosage[baseEntry].route.coding.system = "urn:oid:0.4.0.127.0.16.1.1.2.1"
* dosage[baseEntry].route.coding.code = #20053000
* dosage[baseEntry].route.coding.display = "Oral use"
* dosage[baseEntry].doseAndRate.doseQuantity = 1.5 '{Piece}' "Piece"
* dosage[baseEntry].doseAndRate.doseQuantity.system = "http://snomed.info/sct"
* dosage[baseEntry].doseAndRate.doseQuantity.code = #732936001
* dosage[baseEntry].doseAndRate.doseQuantity.unit = "Tablet (unit of presentation)"

// ZWEITES Dosage Element (sequence 2): Abend-Dosis
* dosage[additionalEntry].sequence = 2
* dosage[additionalEntry].timing.repeat.when = #EVE

* dosage[additionalEntry].doseAndRate.doseQuantity = 2 '{Piece}' "Piece"
* dosage[additionalEntry].doseAndRate.doseQuantity.system = "http://snomed.info/sct"
* dosage[additionalEntry].doseAndRate.doseQuantity.code = #732936001
* dosage[additionalEntry].doseAndRate.doseQuantity.unit = "Tablet (unit of presentation)"
