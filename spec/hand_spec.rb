require 'hand'


describe Hand do 

	it "should calculate the value correctly" do 
		deck = mock(:deck, :cards => [Card.new(:clubs, 5), Card.new(:diamonds, 10)]) 
		#mock deck-has to respond to cards
		hand = Hand.new
		2.times { hand.hit!(deck) } #rather than a real deck it will call the above
		# hand.stub(:cards) { mock_cards } #stub out cards and have it return cards
		expect(hand.value).to eq (15)
	end
end