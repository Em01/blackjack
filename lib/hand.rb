require 'card'
class Hand
	attr_reader :cards #a hand must have cards

	def initialize
		@cards = []
	end

	def hit!(deck)
		@cards << deck.cards.shift
	end

	def value #need the sum of all the cards
		cards.inject(0) {|sum, card| sum += card.value }
	end

	def play_as_dealer(deck)
		puts cards.inspect
		puts "value #{value}"
		if value < 16
			hit!(deck)
			play_as_dealer(deck)
		end
	end
end