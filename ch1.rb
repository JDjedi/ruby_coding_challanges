require 'pry'

def factorial(num)
	count = num - 1
	while count > 0
		num = num * (count)
		count = count - 1
	end

	return num
end

puts factorial(8)



