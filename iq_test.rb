def iq_test(numbers)
	foo = numbers.split(" ")
	foo.map! { |x| x.to_i }

	odd = 0
	even = 0

	foo.each do |x|
		if (x%2) === 0
			even += 1
		else
			odd += 1
		end
	end

	if even > 1
		foo.each do |x|
			if (x%2) === 1
				return foo.index(x) + 1
			end
		end
	elsif odd > 1
		foo.each do |x|
			if (x%2) === 0
				return foo.index(x) + 1
			end
		end
	end
end


iq_test("2 4 7 8 10")
iq_test("1 2 2")