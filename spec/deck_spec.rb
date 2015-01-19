require 'deck'

describe Deck do 

	it 'should build 52 cards' do 
		expect(Deck.build_cards.length).to eq(52)
	end

	it 'should have 52 cards when a new deck has been built' do 
		expect(Deck.new.cards.length).to eq(52)
	end
end
