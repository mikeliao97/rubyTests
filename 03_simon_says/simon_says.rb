#echo
def echo(word) 
	return word
end

#shout
def shout(string)
	string.upcase
end

#repeat
def repeat(word, num = 2) 
	result = (word + " ") * num
	result.strip
end

#start_of_word
def start_of_word(str, pos)
	str.slice(0..(pos - 1)) 
end

#first_word
def first_word(word) 
	word = word.split(" ")
	word[0]
end

#titlelize
def titleize(str)
	str = str.split(" ")
	i = 0
	length = str.length - 1
	begin 
		if(str[i] != "the" &&  str[i] != "and")
			str[i] = str[i].capitalize
		end
	end while i < length

	str = str.join(" ")
	return str
end

