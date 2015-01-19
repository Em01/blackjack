require 'game'

describe Game do 

	it 'should have a players hand' do 
		expect(Game.new.player_hand.cards.length).to eq(2)
	end

	# it 'should have a dealers hand' do 
	# end
	# it 'should have a status' do 
	# end
end