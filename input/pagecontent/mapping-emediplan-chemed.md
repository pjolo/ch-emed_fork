### Mapping CHMED16A to CH EMED

{:class="table table-bordered"}
| Element in CHMED16A | Cardinality| Mapping to FHIR (Resources, Elements) | Comments |
| --- | --- | --- | --- | 
| t | 1..1 | Dosage.extension:posologyDetailObjectType.value[x] | 1: Daily; 2 FreeText; 3: Single; 4: Cyclic; 5: Sequence  |
| ds | 0..* | Dosage.timing.repeat.when | Day segments: 1.Morning -> MORN; 2. Noon -> NOON; 3. Evening -> EVE; 4. Night -> NIGHT (Example 1-0-1-0) |