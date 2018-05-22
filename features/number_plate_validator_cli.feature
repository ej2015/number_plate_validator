Feature: NumberPlateValidator
  run numer_plate_validator as a CLI

	Scenario: use -c option 
		When I run `number_plate validate -c SG ej81d`
		Then the output should contain "true" 

		When I run `number_plate validate -c SG ej881d`
		Then the output should contain "false" 

	Scenario: use --country option 
		When I run `number_plate validate --country SG ej81d`
		Then the output should contain "true" 

