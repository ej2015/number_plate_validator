Feature: NumberPlateValidator
  run numer_plate_validator as a CLI

	Scenario: EJ81D is valid
		When I run `number_plate validate -c SG ej81d`
		Then the output should contain "true" 

