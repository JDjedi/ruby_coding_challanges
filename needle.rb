

def findNeedle(haystack)
	haystack.each do |x|
		if x == "needle"
			needle_local = haystack.index(x)
			puts "found the needle at position " + needle_local.to_s
		end
	end
end


findNeedle(['3', '123124234', nil, 'needle', 'world', 'hay', 2, '3', true, false]) 
findNeedle(['283497238987234', 'a dog', 'a cat', 'some random junk', 'a piece of hay', 'needle', 'something somebody lost a while ago'])
findNeedle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,'needle',1,2,3,4,5,5,6,5,4,32,3,45,54])
findNeedle(['needle',1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,1,2,3,4,5,5,6,5,4,32,3,45,54])
findNeedle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,1,2,3,4,5,5,6,5,4,32,3,45,54,'needle'])


# 'found the needle at position 3'
# 'found the needle at position 5'
# 'found the needle at position 30'
# 'found the needle at position 0'
# 'found the needle at position 43'