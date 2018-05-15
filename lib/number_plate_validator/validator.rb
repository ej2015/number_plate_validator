module NumberPlateValidator
	class Validator 

		attr_reader :region, :validator

		def initialize(region)
			@region = region
			validator_class = eval "NumberPlateValidator::#{region}Validator"
			@validator = validator_class.new
		end

		def is_valid?(registration_number)
			@validator.is_valid? registration_number
		end

	end
end
