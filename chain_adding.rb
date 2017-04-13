def add(*args)
	sum = 0

	if args.length <= 1
#		puts args
		return args
	else
		args.each do |arg_item|
			sum = sum + arg_item
		end
	end
	return sum
#	puts sum
end

test1 = add(1, 2, 5) #8
test1 = test1 + 3 
puts test1






# test2 = add(1, 9)
# test3 = add(5, 6)
# test4 = add(1)
# Test.expect(add(1) == 1);
# Test.expect(add(1,2) == 3);
# Test.expect(add(1,2,3) == 6);


