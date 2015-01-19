require 'card'
require 'deck'

describe Deck do 

	it 'should build 52 cards' do 
		deck = Deck.build
		expect(deck.cards.length).to eq(52)
	end
end
