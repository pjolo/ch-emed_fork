Mapping: CHMED23ADailyPosologyToCHEMEDDosageSplit
Source: CHEMEDDosageSplit
Target: "https://github.com/ig-emediplan/specification/blob/main/chmed23a/posology.md#daily"
Id: chmed23a-posology-daily
Title: "CHMED23A Daily Posology"
Description: "Mapping von CH EMED Dosage Split zu CHMED23A eMediplan Posology Daily Objekt"

// Posology Objekt Type
* extension[posologyDetailObjectType] -> "PosologyDetail object type"
* extension[posologyDetailObjectType].valueCoding -> "t" "1=Daily, 2=FreeText, 3=Single, 4=Cyclic, 5=Sequence"

// Dosage Struktur
//* -> "Posology.Daily" "Daily Dosage Array"

// Timing und Tageszeiten
* sequence -> "ds" "Dosierungsreihenfolge (implizit durch Array-Position)"
* timing.repeat.boundsPeriod.start -> "dtFrom" "Startdatum der Dosierung"
* timing.repeat.boundsPeriod.end -> "dtTo" "Enddatum der Dosierung"
* timing.repeat.when -> "ds" "Tageszeit-Array Position"

// Dosis und Menge
* doseAndRate.doseQuantity -> "Posology.Daily[x].Amount" "Dosiermenge"
* doseAndRate.doseQuantity.value -> "Posology.Daily[x]" "Numerischer Wert der Dosis"
* doseAndRate.doseQuantity.unit -> "Posology.U" "Einheit der Dosis"
* doseAndRate.doseQuantity.code -> "Posology.U" "Einheit als Code"

// Route (Verabreichungsweg)
* route.coding.code -> "roa "EDQM-Code für Verabreichungsweg"

// Zusätzliche Posology-Felder
* patientInstruction -> "appInstr" "Patientenanweisungen"
* asNeededBoolean -> "inRes" "Bei Bedarf (In Reserve)"
