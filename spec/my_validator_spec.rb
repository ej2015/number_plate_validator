require "spec_helper"

describe NumberPlateValidator::MYValidator do

	let(:validator) {described_class.new}

	describe "#is_valid?" do
		it "returns true for hwd378" do
			expect(validator.is_valid? "hwd378").to eq true
		end

		it "returns true for limo4430w" do
			expect(validator.is_valid? "limo4430w").to eq true
		end

		it "returns false for limo44309" do
			expect(validator.is_valid? "limo44309").to eq false
		end

		it "returns true for cax19" do
			expect(validator.is_valid? "cax19").to eq true
		end

		it "returns true for rr23" do
			expect(validator.is_valid? "rr23").to eq true
		end

		it "returns true for ss382x" do
			expect(validator.is_valid? "ss382x").to eq true
		end

		it "returns true for wnt3333" do
			expect(validator.is_valid? "wnt3333").to eq true
		end

		it "returns true for ej52" do
			expect(validator.is_valid? "ej52").to eq true
		end

		it "returns false for hVd378" do
			expect(validator.is_valid? "hvd378").to eq false
		end

		it "returns true for saa8967y" do
			expect(validator.is_valid? "saa8967y").to eq true
		end

		it "returns true for p9999" do
			expect(validator.is_valid? "p9999").to eq true
		end

		it "returns true for px999" do
			expect(validator.is_valid? "px999").to eq true
		end

		it "returns false for pxx" do
			expect(validator.is_valid? "pxx").to eq false
		end

		it "returns false for px090" do
			expect(validator.is_valid? "px090").to eq false
		end

		it "returns false for w01" do
			expect(validator.is_valid? "w01").to eq false
		end

		it "returns true for 99-64-dc" do
			expect(validator.is_valid? "99-64-dc").to eq true
		end

		it "returns true for zc5010" do
			expect(validator.is_valid? "zc5010").to eq true
		end
	end

end
