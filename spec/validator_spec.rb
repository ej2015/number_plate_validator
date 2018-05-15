require "spec_helper"

describe NumberPlateValidator::Validator do

	it "initializes the correct validator accordign to country code" do
    validator = described_class.new("SG")
		expect(validator.validator.class).to eq NumberPlateValidator::SGValidator
	end

end
