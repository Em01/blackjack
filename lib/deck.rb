require "card"

class Deck
	attr_reader :cards 

	def initialize
		@cards = Deck.build_cards
	end

	def self.build_cards
		cards = []
		[:clubs, :diamonds, :spades, :hearts].each do |suit|
			(2..10).each do |number|
			cards << Card.new(suit, number)
		end
		["J", "Q", "K", "A"].each do |facecard|
			cards << Card.new(suit, facecard)
		end
	end
	cards.shuffle
end
	#going to occur on the class as it is a class method and will execute once
	#The idea of a deck needs to be able to build a deck
end