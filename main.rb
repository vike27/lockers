require './locker'
require './bag'


#creating lockers here
lockers = []

(0...1000).each do |i|
	lockers[i] = Locker.new(i, "small")
end

(1000...2000).each do |i|
	lockers[i] = Locker.new(i, "medium")
end

(2000...3000).each do |i|
	lockers[i] = Locker.new(i, "large")
end
#created lockers above


while true do

#user interface below
	puts "what is the size of your bag?"
	puts ">"
	size = gets.chomp
	puts "your bag size is '#{size}'"

	unless size == "small" || size == "medium" || size == "large"
		puts "the only available sizes are 'small', 'medium' or 'large'"
	end

	bag = Bag.new(size)
	 	 
	(0...3000).each do |k|
		locker = lockers[k]
		if locker.available? && locker.can_place?(bag)
			locker.bag = bag
			ticket = locker.id + 1
			puts "your bag's locker ticket is '#{ticket}'" 
			break
		end
		puts "Sorry, there are no lockers for that size available" if locker == lockers.last
	end

end







