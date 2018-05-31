require "spec_helper"

if defined?(ActiveModel)

	class Vehicle < VehicleBase
		validates :plate, number_plate: { country: "SG" }
	end

	class VehicleWithCountry < VehicleBase
		validates :plate, number_plate: { country: :country }
	end

	class VehicleWithCountryProc < VehicleBase
		validates :plate, number_plate: { country: Proc.new { |obj| obj.country } }
	end

	describe Vehicle do
		it "is valid with valid plate from Country" do
			vehicle = Vehicle.new("SG", "SCK38Z")
			expect(vehicle).to be_valid
		end

		it "is invalid with invalid plate from Country" do
			vehicle = Vehicle.new("SG", "E2212")
			expect(vehicle).to_not be_valid
		end
	end

	describe VehicleWithCountry do	
		it "is valid with valid plate from Country" do
			vehicle = VehicleWithCountry.new("SG", "SCK38Z")
			expect(vehicle).to be_valid
		end

		it "is invalid with invalid plate from Country" do
			vehicle = VehicleWithCountry.new("SG", "E2212")
			expect(vehicle).to_not be_valid
		end
	end

	describe VehicleWithCountry do
		it "is valid with valid plate from Country" do
			vehicle = VehicleWithCountryProc.new("SG", "SCK38Z")
			expect(vehicle).to be_valid
		end

		it "is invalid with invalid plate from Country" do
			vehicle = VehicleWithCountryProc.new("SG", "E2212")
			expect(vehicle).to_not be_valid
		end
	end

end
