module NumberPlateValidator
	class MYValidator < CountryValidatorBase

    PATTERNS = [
      /^[A,B,C,D,F,J,K,M,N,P,R,T,V][A-Y]{0,2}([1-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])$/,
			/^W[A-Y]{0,2}([1-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])[A-Y]{0,1}$/,
			/^KV([1-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])[A-Y]$/,
			/^Q[A,K,B,C,L,M,P,R,S,T][A-Y]([1-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])[A-Y]$/,
			/^S[A,B,D,G,K,L,S,T,U][^QSZ]([1-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])[^QSZ]$/,
			/^H[^FGHIOUVXYZ][A-Y]([1-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])$/,
			/^(1[0-2]|1[4-9]|[2-9][0-9]|10[1,2,3,4,5,7]|11[0,1])-\d{2}-DC$/,
			/^(1[0-2]|1[4-9]|[2-9][0-9]|10[1,2,3,4,5,7]|11[0,1])-\d{2}-CC$/,
			/^(1[0-2]|1[4-9]|[2-9][0-9]|10[1,2,3,4,5,7]|11[0,1])-\d{2}-UN$/,
			/^Z[A-D,L,U,Z]([1-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])$/,
			/^E[D,J]([1-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])$/,
			/^LIMO([1-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])[W,B]$/
		]

		def initialize
      @country = "MY"
		end

		def is_valid?(registration_number)
			return false unless super
      PATTERNS.any? { |pattern| @license =~ pattern }
		end

  end
end
