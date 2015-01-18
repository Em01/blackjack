require 'blackjack'

describe Card do 

	# it "should have a suit" do 
	# 	expect(Card.new.suit).not_to be_nil
	# end

	# it "should have a value" do 
	# 	expect(Card.new.value).not_to be_nil
	# end

	it "should accept a suit and value when building" do 
		card = Card.new(:clubs, 10)
		expect(card.suit).to eq (:clubs)
		expect(card.value).to eq(10)
	end 

	# it "should have a value of 5" do 
	# 	expect(Card.new.value).to eq(5)
	# end
end