def number(bus_stops)
	total = 0
	bus_stops.each do |x|
		total += x[0] - x[1]
	end
	puts total
end

number([[10, 0], [3, 5], [5, 8]])
number([[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]])
number([[3, 0], [9, 1], [4, 8], [12, 2], [6, 1], [7, 8]])