require 'pry'

def pig_it(text)
	split_text = text.split(" ")
	final_answer = []

	split_text.each do |x|
		if x.match(/\w/)
			first_letter = x.slice!(0)
			x = x + first_letter + "ay"
			final_answer.push(x)
		else
			final_answer.push(x)
		end
	end

	p final_answer.join(" ")
end



pig_it('Pig latin is cool')
pig_it('Quis custodiet ipsos custodes ?')


