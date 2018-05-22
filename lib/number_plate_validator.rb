require "number_plate_validator/version"
require "active_support/inflector"
require "active_model"
require "active_support/core_ext/string"
require "number_plate_validator/validator"
require "number_plate_validator/sg_validator"
require "number_plate_validator/active_model"

module NumberPlateValidator

	class << self
    def validator(country_code)
			validator_class = eval "NumberPlateValidator::#{country_code}Validator"
			validator = validator_class.new
			Validator.new(validator)
		end
	end
	
end

