Mapping: CHMED23ADailyPosologyToCHEMEDDosageSplit
Source: CHEMEDDosageSplit
Target: "https://github.com/ig-emediplan/specification/blob/main/chmed23a/posology.md#daily"
Id: chmed23a-posology-daily
Title: "CHMED23A Daily Posology"
Description: "Mapping von CH EMED Dosage Split zu CHMED23A eMediplan Posology Daily Objekt"

// Posology Objekt Type
* extension[posologyDetailObjectType] -> "Posology.Type"
* extension[posologyDetailObjectType].valueCoding -> "Posology.Type = 1 (Daily)"

// Dosage Struktur
* -> "Posology.Daily"

// Timing und Tageszeiten
* sequence -> "Dosierungsreihenfolge (implizit durch Array-Position)"
* timing.repeat.boundsPeriod.start -> "Posology.DtFrom"
* timing.repeat.boundsPeriod.end -> "Posology.DtTo"
* timing.repeat.when -> "Posology.Daily Tageszeit-Array Position"

// Dosis und Menge
* doseAndRate.doseQuantity -> "Posology.Daily[x].Amount"
* doseAndRate.doseQuantity.value -> "Posology.Daily[x] Wert"
* doseAndRate.doseQuantity.unit -> "Posology.U (Unit)"
* doseAndRate.doseQuantity.code -> "Posology.U als Code"

// Route (Verabreichungsweg)
* route -> "Posology.RoA (Route of Administration)"
* route.coding.code -> "Posology.RoA EDQM-Code"
* route.coding.display -> "Posology.RoA Display"

// Zusätzliche Posology-Felder
* additionalInstruction -> "Posology.InRes (Instruction/Reason)"
* patientInstruction -> "Posology.InRes (Patient Instructions)"
* asNeededBoolean -> "Posology.TT = 3 (In Reserve / Bei Bedarf)"
