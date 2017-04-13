
def list(names)
	array = []
	names.each do |person|
		array << "#{person[:name]}"
	end

	if array.length == 2
		p array.join(" & ")
	elsif array.length > 2
		p array[0..-3].join(", ") + ", " + array[-2..-1].join(" & ")
	else
		p array.join("")
	end
end


list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'},{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])
list([{name: 'Bart'},{name: 'Lisa'}]) 
list([{name: 'Bart'}])

