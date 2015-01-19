class Deck
	def self.build
		cards = []
		[:clubs, :diamonds, :spades, :hearts].each do |suit|
			(2..10).each do |number|
			cards << Card.new(suit, number)
			Card.new(suit, number)
		end
		cards
	end
	#going to occur on the class as it is a class method and will execute once
	#The idea of a deck needs to be able to build a deck
end
end