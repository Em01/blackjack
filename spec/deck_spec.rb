require 'card'
require 'deck'

describe Deck do 

	it 'should build 52 cards' do 
		expect(Deck.build_cards.length).to eq(52)
	end
end
