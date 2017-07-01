

def persistence(n)
	n_array = n.to_s.split(//)
	while (n_array.length) > 1
		n_array.collect! { |x| x.to_i }
		answer = n_array.reject(&:zero?).inject(:*)
		n = answer
		n_array.clear
		n_array = n.to_s.split(//)
		if (n_array.length) == 1
			p n
		end
	end
end

# persistence(39)
# persistence(25)
persistence(9999)



