require 'pry'

class Decoder

	def initialize
		@morse_hash = Hash.new
		@morse_hash = {
			".-" => "a",
			"-..." => "b",
			"-.-." => "c",
			"-.." => "d",
			"." => "e",
			"..-." => "f",
			"--." => "g",
			"...." => "h",
			".." => "i",
			".---" => "j",
			"-.-" => "k",
			".-.." => "l",
			"--" => "m",
			"-." => "n",
			"---" => "o",
			".--." => "p",
			"--.-" => "q",
			".-." => "r",
			"..." => "s",
			"-" => "t",
			"..-" => "u",
			"...-" => "v",
			".--" => "w",
			"-..-" => "x",
			"-.--" => "y",
			"--.." => "z",
			" " => " ",
			".----" => "1",
			"..---" => "2",
			"...--" => "3",
			"....-" => "4",
			"....." => "5",
			"-...." => "6",
			"--..." => "7",
			"---.." => "8",
			"----." => "9",
			"-----" => "0"
		}
		@decoded_message_array = []
	end 

	def morse_code_spliter(arg)
		letter_array = []
		word_array = arg.split("   ")

		word_array.each do |x|
			letter_array << x.split(" ")
		end

		message_checker(letter_array)
	end

	def message_checker(arg)

		assembler_array = []

		arg.each do |x|
			assembler_array.clear
			x.each do |y|
				@morse_hash.each do |key, value|
					if y == key
						assembler_array << value
					end
				end
			end
			@decoded_message_array << assembler_array.join("")
		end		

		final_output
	end

	def final_output
		p @decoded_message_array.join(" ")
	end
end

test_run = Decoder.new
test_run.morse_code_spliter('- .... .. ...   .. ...   -- -.--   -- --- .-. ... .   -.-. --- -.. .   .--. .-. --- --. .-. .- -- --··--   .- -. -..   -.-. .... .-. .. ...   ... ..- -.-. -.- ...
')




















