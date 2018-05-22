require 'thor'

module NumberPlateValidator
	class CLI < Thor
		desc "validate -c CC PLATE", "validate if a PLATE is valid in the country CC"
		method_option :country, aliases: "-c", desc: "standard country code in capital letters", required: true
		def validate(plate)
      validator = NumberPlateValidator.validator(options[:country])
			validator.is_valid? plate
		end

	end
end

