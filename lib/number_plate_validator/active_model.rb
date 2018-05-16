module ActiveModel 
  module Validations
		class NumberPlateValidator < ActiveModel::EachValidator
			def validate_each(record, attribute, value)
				country = case(options[:country])
									when Proc 
										options[:country].call(record)
									when Symbol
										record.send(options[:country])
									else 
										options[:country]
									end

			  val = ::NumberPlateValidator.validator(country)

				record.errors.add attribute, (options[:message] || "is not a valid number plate") unless val.is_valid?(value)
			end
		end
	end
end
