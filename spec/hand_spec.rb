require 'hand'


describe Hand do 

	it "should calculate the value correctly" do 
		deck = double(:deck, :cards => [Card.new(:clubs, 5), Card.new(:diamonds, 10)]) 
		hand = Hand.new
		2.times { hand.hit!(deck) }
		expect(hand.value).to eq (15)
	end

	describe "#play_as_dealer" do 
		it "should hit below 16" do 
			deck = double(:deck, :cards => [Card.new(:clubs, 4), Card.new(:diamonds, 4), Card.new(:clubs, 2), Card.new(:hearts, 6)])
			hand = Hand.new
			2.times { hand.hit!(deck) }
			hand.play_as_dealer(deck)
			expect(hand.value).to eq(16)
		end

		it "should hit above 16" do 
			deck = double(:deck, :cards => [Card.new(:clubs, 8), Card.new(:diamonds, 9)])
			hand = Hand.new
			2.times { hand.hit!(deck) }
			hand.play_as_dealer(deck)
			expect(hand.value).to eq(17)
		end
		it "should stop on 21"
	end
end