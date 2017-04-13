def printer_error(s)
	array = []
	s.scan(/[n-z]/) { |x| array << x}
	puts array.length.to_s + "/" + s.length.to_s
end

s="aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
printer_error(s)