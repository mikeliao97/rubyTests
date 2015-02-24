#translate
def translate(str)
	str = str.split(" ") #split the str into arrays
	emptyString = []
	vowels = "aeiou"


	i = 0;
	num = str.length - 1
	begin  
		currentWord = str[i]  #this is the current word
		lengthOfWord = currentWord.length - 1
		#special case for "qu" square
		if (!(vowels.include?(currentWord[0])) and currentWord[1..2] == "qu")
			#do something
			emptyString << currentWord[3..lengthOfWord] + currentWord[0, 3] + "ay"
		#special case for "qu" preceded by a consonant
		elsif currentWord[0..1] == "qu"
			emptyString << currentWord[2..lengthOfWord] + currentWord[0,2] + "ay"
		#check whether the first word is a vowel
		elsif vowels.include?(currentWord[0])
			currentWord = currentWord + "ay"
			emptyString << currentWord	
		#now this is a vowel
		else
			numberConsonants = 0
			a = 0
			while a < currentWord.length
				if (vowels.include?(currentWord[a]) == false)
					numberConsonants += 1
					a += 1
				else
					break
				end
			end
			#now you have the number of Vowels 
			#banana
			currentWord = currentWord[numberConsonants..lengthOfWord] + currentWord[0..(numberConsonants - 1)] + "ay"
			emptyString << currentWord
		end
		i +=1
	end while i  <= num
	return emptyString.join(" ").strip

end






