module NumberPlateValidator 
	class CountryValidatorBase

		attr_reader :country	

		def is_valid?(registration_number)
			@license = registration_number.gsub(/\s/, "").upcase if registration_number.present?
			@license.present?
		end

	end
end
