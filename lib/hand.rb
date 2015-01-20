class Hand
	attr_reader :cards #a hand must have cards

	def initialize
		@cards = []
	end

	def hit!(deck)
		@cards << deck.cards.pop
	end
end