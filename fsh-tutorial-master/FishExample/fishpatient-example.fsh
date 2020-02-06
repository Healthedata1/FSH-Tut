Alias: PA = http://hl7.org/fhir/StructureDefinition/patient-animal

Instance:   FishPatient1
//InstanceOf: FishPatient
InstanceOf: http://example.org/fhir/fish/StructureDefinition/fish-patient
Title:      "Fish Patient 1"
* name.given = "Goldy"
* birthDate = "2020"
* gender = #female
* deceasedBoolean = false
* active = true
//* extension[FishSpecies].valueCodeableConcept = SCT#12978006 "Carassius auratus (organism"
//* extension[FishSpecies].valueCodeableConcept.text = "Goldfish"
//* FishSpecies.valueCodeableConcept = SCT#12978006 "Carassius auratus (organism"
//* FishSpecies.valueCodeableConcept.text = "Goldfish"
* extension[PA].extension[species].valueCodeableConcept = SCT#90580008  "Fish (organism)"
* extension[PA].extension[species].valueCodeableConcept.text = "Fish"
* extension[PA].extension[breed].valueCodeableConcept = SCT#12978006 "Carassius auratus (organism)"
* extension[PA].extension[breed].valueCodeableConcept.text = "Goldfish"
* extension[PA].extension[genderStatus].valueCodeableConcept = http://hl7.org/fhir/animal-genderstatus#unknown "Unknown"
* extension[PA].extension[genderStatus].valueCodeableConcept.text = "Unknown"
