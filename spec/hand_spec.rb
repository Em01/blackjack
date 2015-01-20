require 'hand'

describe Hand do 

	it "should calculate the value correctly" do 
		mock_cards = [Card.new(:clubs, 5), Card.new(:diamonds, 10)]
		hand = Hand.new
		hand.stub(:cards) { mock_cards } #stub out cards and have it return cards
		expect(hand.value).to eq (15)
	end
end