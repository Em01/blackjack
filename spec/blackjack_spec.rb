require 'blackjack'

describe Card do 

	it "should have a suit" do 
		expect(Card.new.suit).not_to be_nil!
	end

	it "should have a value"
	it "should accept a suit and value when building"

	# it "should have a value of 5" do 
	# 	expect(Card.new.value).to eq(5)
	# end
end