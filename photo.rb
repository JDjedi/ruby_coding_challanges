def delete_nth(order, max_e)
	h = Hash.new(0)
	value_eliminator = []

	order.each{ |x| h[x] += 1 }

	h.each do |key, value|
		if value > max_e
			value_eliminator << key
		end
	end

	order.reverse!
	value_eliminator.each do |del|
		order.delete_at(order.index(del))
	end
	order.reverse!
	return order
end

delete_nth([1, 2, 3, 1, 1, 2, 1, 2, 3, 3, 4, 5], 3) 

# output:   [1, 2, 3, 1, 1, 2, 2, 3, 3, 4, 5]
# Expected: [1, 2, 3, 1, 1, 2, 2, 3, 3, 4, 5]
# instead:  [1, 2, 3, 1, 1, 2, 1, 2, 3, 3, 4, 5]
# this bad boy has been solved
