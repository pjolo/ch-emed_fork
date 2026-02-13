Mapping: CHMED23ADailyPosologyToCHEMEDDosageSplit
Source: CHEMEDDosageSplit
Target: "https://github.com/ig-emediplan/specification/blob/main/chmed23a/posology.md#daily"
Id: chmed23a-posology-daily
Title: "CHMED23A Daily Posology"
Description: "Mapping von CH EMED Dosage Split zu CHMED23A eMediplan Posology Daily Objekt"

// Posology Objekt Type
* extension[posologyDetailObjectType] -> "Posology.Type"
* extension[posologyDetailObjectType].valueCoding -> "Posology.Type = 1 (Daily)"

// Dosage Elemente (Split Dosierung)
* -> "Posology.Daily"

// Timing und Tageszeiten
* dosage.sequence -> "Dosierungsreihenfolge (implizit durch Array-Position)"
* dosage.timing.repeat.boundsPeriod.start -> "Posology.DtFrom"
* dosage.timing.repeat.boundsPeriod.end -> "Posology.DtTo"
* dosage.timing.repeat.when -> "Posology.Daily Tageszeit-Array Position"
* dosage.timing.repeat.when = #MORN -> "Posology.Daily[0] (Morgen)"
* dosage.timing.repeat.when = #NOON -> "Posology.Daily[1] (Mittag)"
* dosage.timing.repeat.when = #EVE -> "Posology.Daily[2] (Abend)"
* dosage.timing.repeat.when = #NIGHT -> "Posology.Daily[3] (Nacht)"

// Dosis und Menge
* dosage.doseAndRate.doseQuantity -> "Posology.Daily[x].Amount"
* dosage.doseAndRate.doseQuantity.value -> "Posology.Daily[x] Wert"
* dosage.doseAndRate.doseQuantity.unit -> "Posology.U (Unit)"
* dosage.doseAndRate.doseQuantity.code -> "Posology.U als Code"

// Route (Verabreichungsweg)
* dosage.route -> "Posology.RoA (Route of Administration)"
* dosage.route.coding.code -> "Posology.RoA EDQM-Code"
* dosage.route.coding.display -> "Posology.RoA Display"

// Zusätzliche Posology-Felder
* dosage.additionalInstruction -> "Posology.InRes (Instruction/Reason)"
* dosage.patientInstruction -> "Posology.InRes (Patient Instructions)"
* dosage.asNeededBoolean -> "Posology.TT = 3 (In Reserve / Bei Bedarf)"

// Relation zu MedicationStatement
* -> "Medicament.Pos (Posology innerhalb des Medicament-Objekts)"
