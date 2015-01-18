require 'blackjack'

describe Card do 

	it "should have a value of 5" do 
		expect(Card.new.value).to eq(5)
	end
end