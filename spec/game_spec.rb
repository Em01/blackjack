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

	 it 'should hit when i tell it to' do 
	 	game = Game.new
	 	game.hit
	 	expect(game.player_hand.cards.length).to eq(3)
	 end

	 it 'should play the dealer hand' do 
	 	game = Game.new
	 	game.stand
	 	expect(game.status[:winner]).not_to be_nil
	 end 

	 describe "#determine_winner" do 
	 	it "should have dealer win when player busts" do 
	 		expect(Game.new.determine_winner(22, 15)).to eq(:dealer)
	 	end
	 	it "should have player win if dealer busts" do 
	 		expect(Game.new.determine_winner(18, 22)).to eq(:player)
	 	end
	 	it "should have player win if player > dealer" do 
	 		expect(Game.new.determine_winner(18, 16)).to eq(:player)
	 	end
	 	it "should have push if tie" do
	 		expect(Game.new.determine_winner(16, 16)).to eq(:push)
	 	end
	 end
end