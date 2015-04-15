def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(text, num=1)
	 repeated = ([text] * num).join(' ')
end

def first_word(string)
	string.split[0]
end

def start_of_word(string, num)
	string[0,num]
end

def titleize(string)
	 string.split.map { |x| x.capitalize }.join(" ")
end
