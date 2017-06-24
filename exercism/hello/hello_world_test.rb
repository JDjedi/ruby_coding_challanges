

begin
  gem 'minitest', '>= 5.0.0'
  require 'minitest/autorun'
  require_relative 'hello_world'
rescue Gem::LoadError => e
  puts "\nMissing Dependency:\n#{e.backtrace.first} #{e.message}"
  puts 'Minitest 5.0 gem must be installed for the xRuby track.'
rescue LoadError => e
  puts "\nError:\n#{e.backtrace.first} #{e.message}"
  exit 
end

# Common test data version: 1.0.0 4b9ae53
class HelloWorldTest < Minitest::Test
  def setup
    @hello_obj = Helloizzle.new
  end

  def test_say_hi
    # skip
    assert_equal "Hello, World!", @hello_obj.hello
  end
end

