def add(num1, num2)
	num1 + num2
end


def subtract(num1, num2)
	num1 - num2
end

def sum(array)
	array.inject(0) {|sum, i| sum + i}
end


def multiply(*array)
	#turns every argument into an array
	total = 1
	array.each {|i| total = total * i}
	return total
end

def power(num1, num2)
	num1 ** num2
end

def factorial(num)

	if(num == 0)
		return 0
	end
	total = 1
	while(num > 1)
		total = total * num
		num = num -1
	end
	return total
end
