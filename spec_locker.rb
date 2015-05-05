require 'minitest/autorun'
require_relative 'locker'
require_relative 'bag'

describe "Locker" do
  
  before do 
    @locker = Locker.new(1, "small")
    @bag = Bag.new("small")
    @bag2 = Bag.new("large")
  end

  describe "when a locker is available" do
	it "should return true" do
      @locker.available?.must_equal true
	end
  end

  describe "when a locker is not available" do
	it "should return false" do
	  @locker.bag = @bag 
      @locker.available?.wont_equal true
	end
  end

  describe "when a bag is the same size as a locker" do
  	it "should return true" do
  	  @locker.can_place?(@bag).must_equal true
  	end
  end

  describe "when a bag is not the same size as a locker" do
  	it "should return false" do
  	  @locker.can_place?(@bag2).wont_equal true
  	end
  end

end
