require "spec_helper"

describe NumberPlateValidator::SGValidator do

	let(:validator) {described_class.new}

	describe "#country" do
		it "returns SG" do
			expect(validator.country).to eq "SG"
		end
	end

	describe "#is_valid?" do
		it "returns true for EP67P" do
			expect(validator.is_valid? "EP67P").to eq true
		end

		it "disregards spaces" do
			expect(validator.is_valid? "E P6  7P").to eq true
		end


		it "returns false for EP68P" do
			expect(validator.is_valid? "EP68P").to eq false
		end

		it "returns true for SCK38Z" do
			expect(validator.is_valid? "SCK38Z").to eq true
		end

		it "returns true for SLZ900Z" do
			expect(validator.is_valid? "SLZ900Z").to eq true
		end

		it "returns true for SJY9090E" do
			expect(validator.is_valid? "sjy9090E").to eq true
		end

		it "returns true for EJ81D" do
			expect(validator.is_valid? "ej81d").to eq true
		end

		it "returns true for ew8861z" do
			expect(validator.is_valid? "ew8861z").to eq true
		end

		it "returns true for slr3e" do
			expect(validator.is_valid? "slr3e").to eq true
		end

		it "returns true for SCN22C" do
			expect(validator.is_valid? "SCN22C").to eq true
		end

		it "returns true for EB2332J" do
			expect(validator.is_valid? "EB2332J").to eq true
		end

		it "returns true for SJD9L" do
			expect(validator.is_valid? "sjd9l").to eq true
		end

		it "returns false for EB2332H" do
			expect(validator.is_valid? "EB2332H").to eq false
		end

		it "returns false for E" do
			expect(validator.is_valid? "E").to eq false
		end

		it "returns false for Eadfe2212" do
			expect(validator.is_valid? "Eadfe2212").to eq false
		end

		it "returns false for E2212" do
			expect(validator.is_valid? "E2212").to eq false
		end

		it "returns false for empty input" do
			expect(validator.is_valid? "").to eq false
			expect(validator.is_valid? nil).to eq false
		end

		it "returns false for 134123" do
			expect(validator.is_valid? "134123").to eq false
		end

		it "returns false for ESF" do
			expect(validator.is_valid? "ESF").to eq false
		end

		it "returns false for SCN23c" do
			expect(validator.is_valid? "scn23c").to eq false
		end

		it "returns false for 6skf6y" do
			expect(validator.is_valid? "6skf6y").to eq false
		end

		it "returns true for SGF9992M" do
			expect(validator.is_valid? "SGF9992M").to eq true
		end

		it "returns false for SGF09992M" do
			expect(validator.is_valid? "SGF09992M").to eq false
		end

		it "returns true for SK73G" do
			expect(validator.is_valid? "SK73G").to eq true
		end

		it "returns true for SK73GG" do
			expect(validator.is_valid? "SK73GG").to eq false
		end

		it "returns true for SK073G" do
			expect(validator.is_valid? "SK073G").to eq false
		end

		it "returns true for sk73SKG" do
			expect(validator.is_valid? "sk73skg").to eq false
		end

		it "returns true for SY87T" do
			expect(validator.is_valid? "Sy87t ").to eq true
		end


	end


end
