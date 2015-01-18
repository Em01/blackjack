class Card

	def value
		5
	end
end

describe Card do 

	it "should have a value of 6" do 
		Card.new.value.should eq(6)
	end
end