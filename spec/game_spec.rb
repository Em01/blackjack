require 'game'


describe Game do 

	it 'should have a players hand' do 
		expect(Game.new.player_hand.cards.length).to eq(2)
	end

	 it 'should have a dealer hand' do 
	 	expect(Game.new.dealer_hand.cards.length).to eq(2)
	 end
	 it 'should have a status' do 
	 	expect(Game.new.status).not_to be_nil
	 end
end