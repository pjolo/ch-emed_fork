Mapping: CHMED23ADailyPosologyToCHEMEDDosageSplit
Source: CHEMEDDosageSplit
Target: "https://github.com/ig-emediplan/specification/blob/main/chmed23a/posology.md#daily"
Id: chmed23a-posology-daily
Title: "CHMED23A Daily Posology"
Description: "Mapping von CH EMED Dosage Split zu CHMED23A eMediplan Posology Daily Objekt"

// Posology Objekt Type
* extension[posologyDetailObjectType] -> "Posology.Type" "Typ des Posology-Objekts"
* extension[posologyDetailObjectType].valueCoding -> "Posology.Type = 1 (Daily)" "Daily Posology Type"

// Dosage Struktur
* -> "Posology.Daily" "Daily Dosage Array"

// Timing und Tageszeiten
* sequence -> "Array-Position" "Dosierungsreihenfolge (implizit durch Array-Position)"
* timing.repeat.boundsPeriod.start -> "Posology.DtFrom" "Startdatum der Dosierung"
* timing.repeat.boundsPeriod.end -> "Posology.DtTo" "Enddatum der Dosierung"
* timing.repeat.when -> "Posology.Daily[x]" "Tageszeit-Array Position"

// Dosis und Menge
* doseAndRate.doseQuantity -> "Posology.Daily[x].Amount" "Dosiermenge"
* doseAndRate.doseQuantity.value -> "Posology.Daily[x]" "Numerischer Wert der Dosis"
* doseAndRate.doseQuantity.unit -> "Posology.U" "Einheit der Dosis"
* doseAndRate.doseQuantity.code -> "Posology.U" "Einheit als Code"

// Route (Verabreichungsweg)
* route -> "Posology.RoA" "Verabreichungsweg (Route of Administration)"
* route.coding.code -> "Posology.RoA" "EDQM-Code für Verabreichungsweg"
* route.coding.display -> "Posology.RoA" "Display-Text für Verabreichungsweg"

// Zusätzliche Posology-Felder
* additionalInstruction -> "Posology.InRes" "Zusätzliche Anweisungen"
* patientInstruction -> "Posology.InRes" "Patientenanweisungen"
* asNeededBoolean -> "Posology.TT = 3" "Bei Bedarf (In Reserve)"
