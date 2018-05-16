require "spec_helper"

if defined?(ActiveModel)

	class Vehicle < VehicleBase
    validates :plate, number_plate: { country: "SG" }
	end

describe Vehicle do	
  it "is valid with valid plate from SG" do
    vehicle = Vehicle.new("SG", "SCK38Z")
		expect(vehicle).to be_valid
	end

	it "is invalid with invalid plate from SG" do
    vehicle = Vehicle.new("SG", "E2212")
		expect(vehicle).to_not be_valid
	end


end

end
