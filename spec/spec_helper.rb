$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "number_plate_validator"

if defined?(ActiveModel)
	class VehicleBase
		include ActiveModel::Validations

		attr_accessor :country, :plate

		def initialize(country, plate)
			@country = country
			@plate = plate
		end
	end
end
