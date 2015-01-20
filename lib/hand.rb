require 'card'
class Hand
	attr_reader :cards #a hand must have cards

	def initialize
		@cards = []
	end

	def hit!(deck)
		@cards << deck.cards.pop
	end

	def value #need the sum of all the cards
		value = 0
		cards.each do |card|
			value += card.value
		end
		value
		end
end