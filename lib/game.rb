require 'hand'


class Game
	attr_reader :player_hand, :dealer_hand
	def initialize
		@deck = Deck.new
		@player_hand = Hand.new
		@dealer_hand = Hand.new
		2.times { @player_hand.hit!(@deck)}
		2.times { @dealer_hand.hit!(@deck)}
	end
end