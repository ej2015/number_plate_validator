require "number_plate_validator/version"
require "active_support/inflector"
require "active_support/core_ext/string"
require "number_plate_validator/validator"
require "number_plate_validator/sg_validator"

module NumberPlateValidator

	class << self
    def validator(country_code)
			Validator.new(country_code)
		end
	end
	
end

