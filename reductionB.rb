

def reduction(array)

	completed_array = []
	array_filter = [["NORTH", "SOUTH"], ["SOUTH", "NORTH"], ["WEST", "EAST"], ["EAST", "WEST"]]
	worker = array.shift(2)
	while array.length > 0
		array_filter.each do |x|
			if x == worker
				worker = []
				worker << array.shift(2)
			else
				worker.flatten!
				completed_array << worker.shift()
				worker << array.shift()
			end
		end
	end
	puts
	p completed_array
end

reduction(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])

