require 'hand'


describe Hand do 

	it "should calculate the value correctly" do 
		deck = double(:deck, :cards => [Card.new(:clubs, 5), Card.new(:diamonds, 10)]) 
		hand = Hand.new
		2.times { hand.hit!(deck) }
		expect(hand.value).to eq (15)
	end
end