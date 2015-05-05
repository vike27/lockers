class Locker
  attr_reader :id, :size, :bag 
  attr_writer :bag

  def initialize(id, size=nil, bag=nil)
  	@id = id
	  @size = size
	  @bag = bag
  end

  def available?
  	true if bag == nil
  end

  def can_place?(bag)
	  if bag.size == self.size
		  return true
	  else
	 	  return false
	  end 
  end

end