Feature: NumberPlateValidator
  run numer_plate_validator as a CLI

	Scenario: EJ81D is valid
		When I run 'sg_number_plate validate ej81d'
		Then the output should contain "True"

