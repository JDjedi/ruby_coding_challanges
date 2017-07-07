
def dirReduc(direction_array)
	array_filter = [["NORTH", "SOUTH"], ["SOUTH", "NORTH"], ["WEST", "EAST"], ["EAST", "WEST"]]
	work_array = []

	while (direction_array.length) > 0
		test_directions = []
		if test_directions == []
			test_directions = direction_array.slice!(0..1)
			array_filter.each do |x|
				if x === test_directions
					test_directions.clear
				else
					work_array << test_directions[0]
				end
			end
			p direction_array
			p work_array
		else
			test_directions << direction_array.slice!(0)
			p direction_array
			p work_array
		end
	end
end

dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])



