require 'blackjack'

describe Card do 

	it "should accept a suit and value when building" do 
		card = Card.new(:clubs, 10)
		expect(card.suit).to eq (:clubs)
		expect(card.value).to eq(10)
	end 

	it "should have a value of 10 for facecards" do 
		card = Card.new(:hearts, "J")
		expect(card.value).to eq(10)
	end
end