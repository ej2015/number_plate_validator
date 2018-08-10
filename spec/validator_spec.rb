require "spec_helper"

describe NumberPlateValidator::Validator do

  it "initializes the correct validator accordign to country code" do
    sg_validator = NumberPlateValidator::SGValidator.new
    validator = described_class.new(sg_validator)
    expect(validator.validator.class).to eq NumberPlateValidator::SGValidator
  end

end
