module NumberPlateValidator
	class SGValidator < CountryValidatorBase
		CHECK_SUM = { 0 => "A", 1 => "Z", 2 => "Y", 3 => "X", 4 => "U", 5 => "T", 6 => "S", 7 => "R", 8 => "P", 9 => "M", 10 => "L", 11 => "K", 12 => "J", 13 => "H", 14 => "G", 15 => "E", 16 => "D", 17 => "C", 18 => "B" }
		MULTIPLIER = [9, 4, 5, 4, 3, 2]

		def initialize
      @country = "SG"
		end

		def is_valid?(registration_number)
			return false unless super
			return false if @license.length > 8 || @license.length < 4
			test = /^[A-Z]{1,3}[1-9]{1}\d{0,3}[A-Z]$/ =~ @license
			return false unless test == 0
			letters = @license[/[A-Z]+/]
			numerals = @license[/\d+/]

			checksum = get_checksum(letters, numerals)
			checksum == @license[-1]
		end

		def get_checksum(letters, numerals)
			numbers = get_numbers(letters, numerals)
			get_checksum_from_numbers(numbers)
		end

		def get_numbers(letters, numerals)
			numbers = []
			letters.split(//).each do |alphebat|
				numbers << (alphebat.ord - 64)
			end

			if numbers.length == 3
				numbers = numbers[1,2]
			elsif numbers.length == 1
				numbers = [1] + numbers
			end

			numerals = ("000" + numerals)[-4,4]
			numbers + numerals.split(//).map(&:to_i)
		end

		def get_checksum_from_numbers(numbers)
			checksum_array = []
			numbers.zip(MULTIPLIER) { |x, y| checksum_array << (x * y) }
			checksum_key = checksum_array.reduce(:+) % 19
			CHECK_SUM[checksum_key]
		end
	end
end
