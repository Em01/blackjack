class Card

	attr_reader :suit, :value
	def initialize(suit, value) 
		@suit = suit
		@value = value
		#the value here is what the card should return-facevalue
	end

	def value
		return 10 if ["J", "Q", "K"].include?(@value) 
		return 11 if @value == "A"
		return @value
	end

	def to_s
		"A-diamonds"
		"#{@value}-#{suit}"
	end
end

