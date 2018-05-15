require "spec_helper"

describe NumberPlateValidator do
  it "has a version number" do
    expect(NumberPlateValidator::VERSION).not_to be nil
  end

	describe "#validator" do
    it "initializes a validator" do
      expect(NumberPlateValidator.validator("SG").class).to be NumberPlateValidator::Validator
    end
	end
end
