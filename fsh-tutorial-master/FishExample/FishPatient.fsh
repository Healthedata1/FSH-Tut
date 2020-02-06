Alias: CC = CodeableConcept
Alias: vCC = valueCodeableConcept
Alias: PA = http://hl7.org/fhir/StructureDefinition/patient-animal


Profile:        FishPatient
Parent:         Patient
Id:             fish-patient
Title:          "Fish Patient"
Description:    "A patient at **Aquatic** Veterinary Services."
* ^name = "foo"
* maritalStatus 0..0
* communication 0..0
//* extension contains FishSpecies 0..1
* extension contains PA 0..1


Extension:  FishSpecies
Id: fish-species
Title: "Fish Species"
Description: "The species name of a *piscine* (fish) patient."
* value[x] only CC
* valueCodeableConcept from FishSpeciesValueSet (extensible)

ValueSet:  FishSpeciesValueSet
Title: "Fish Species Value Set"
Description:  "Codes describing various species of fish from SNOMED-CT."
* codes from system SCT where code is-a SCT#90580008  "Fish (organism)"
