

begin
	gem 'minitest', '>= 5.0.0'
	require 'minitest/autorun'
	require_relative 'hello_world'
rescue Gem::LoadError => e
	puts "\nMissing  Dependency:\#{e.backtrace.first} #{e.message}"
	puts "Minitest 5.0 gem must be installed for xRuby track."
rescue LoadError =>
	puts "\nErrorL\n#{e.backtrace.first} #{e.message}"
	puts DATA.read
	exit 1
end

class HelloWorldTest < Minitest::Test
	def test_say_hi
		assert_equal "Hello, World!", HelloWorld.hello
	end
end


