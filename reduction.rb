
def dirReduc(direction_array)
	array_filter = [["NORTH", "SOUTH"], ["SOUTH", "NORTH"], ["WEST", "EAST"], ["EAST", "WEST"]]
	work_array = []
	test_directions = []

	while (direction_array.length) > 0
		if test_directions == []
			test_directions = direction_array.slice!(0..1)
			array_filter.each do |x|
				if x == test_directions
					test_directions = []
					break
				else
					work_array << test_directions.slice!(0)
				end
			end
			p direction_array
			p work_array
			puts
		elsif (test_directions.length) == 1
			test_directions << direction_array.slice!(0)
			array_filter.each do |x|
				if x == test_directions
					test_directions = []
					break
				else
					work_array << test_directions.slice!(0)
				end
			end
		end
	end
	p direction_array
	p work_array
end

dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])



