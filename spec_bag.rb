require 'minitest/autorun'
require_relative 'bag'

describe "Bag" do
  
  before do 
    @bag = Bag.new("small")
  end

  describe "when a bag is initialized" do
	it "can take a size parameter and respond to it" do
	  @bag.size.must_equal "small"
	end
  end

end

