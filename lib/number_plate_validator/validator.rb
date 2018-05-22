module NumberPlateValidator
	class Validator 

		attr_reader :validator

		def initialize(validator)
			@validator = validator 
		end

		def is_valid?(registration_number)
			@validator.is_valid? registration_number
		end

	end
end
