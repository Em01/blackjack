class Card

	attr_reader :suit, :value
	def initialize(suit, value) 
		@suit = suit
		@value = value
		#the value here is what the card should return-facevalue
	end

	def value
		return 10 if value = "J"
		#otherwise
		return @value
	end
end