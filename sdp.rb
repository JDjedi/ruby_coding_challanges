def sum_dig_pow(a, b)
	a = a.to_s.split("").map { |s| s.to_i }
	b = b.to_s.split("").map { |s| s.to_i }

	p a
	p b
end

sum_dig_pow(10, 100)
#sum_dig_pow(1, 100)


# describe "Example Tests" do
#   Test.assert_equals( sum_dig_pow(1, 10), [1, 2, 3, 4, 5, 6, 7, 8, 9])
#   Test.assert_equals(sum_dig_pow(1, 100), [1, 2, 3, 4, 5, 6, 7, 8, 9, 89])
#   Test.assert_equals(sum_dig_pow(10, 100),  [89])
#   Test.assert_equals(sum_dig_pow(90, 100), [])
#   Test.assert_equals(sum_dig_pow(90, 150), [135])
#   Test.assert_equals(sum_dig_pow(50, 150), [89, 135])
#   Test.assert_equals(sum_dig_pow(10, 150), [89, 135])
# end