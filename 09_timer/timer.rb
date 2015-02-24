class Timer
	attr_accessor :seconds

	def initialize(seconds = 0) 
		@seconds = seconds
	end
	def time_string

		#60 seconds in a minute 3600 seconds in an hour
		#get the number of hours
		hours = @seconds / 3600
		@seconds = @seconds - hours * 3600
		hourString = padded(hours)

		minutes = @seconds / 60
		@seconds = @seconds - minutes * 60
		minuteString = padded(minutes)


		secondString = padded(@seconds)

		return hourString + ":" + minuteString + ":" + secondString		
	end
	
	def padded(integer)
		if((integer.to_s).length == 1)
			"0" + integer.to_s
		else
			integer.to_s
		end 		
	end
end