class Book
	
	attr_accessor :title
	def title
		titlelize(@title)
	end

	def titlelize(string) 
		#always capitalize the first word
		#always capitalize I
		uncapitalize = ["a", "an", "and", "to", "the", "in", "of"]
		string = string.split(" ")

		string.each_with_index.collect{	|word, i| 
			if(i == 0)
				string[i] = word.capitalize
			else
				if(uncapitalize.include?(word))
					word = word[0].downcase + word[1..word.length - 1]
					string[i] = word
				else
					string[i] = word.capitalize
				end
			end 									
		}

		string = string.join(" ");
			 
	end
end