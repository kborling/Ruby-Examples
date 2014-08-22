def say_hello(&block)
	puts "Hello, Betch"
	/ yield can be ran any number of times /
	yield
	puts "I said hello"
	if block_given?
		block.call
	else
		puts "No block was given"
	end
end

say_hello { puts "Hello again"}


def header(&block)
	puts "This is our header"
	block.call
	/ Captures the error, similar to catch /
rescue
	puts "This is the rescue part"

	/ If exception is thrown, this ensures the code runs regardless /
ensure
	puts "I am inside of the ensure block"
end

header do
	puts "This is the body of the block"
	raise "This is an error"
end


puts "This is the first line of your Ruby program."

BEGIN { puts "INSIDE OF THE BEGIN BLOCK"}
END { puts "INSIDE OF THE END BLOCK"}


def show_numbers(numbers = 10)
	i = 0
	while i < 10
		yield i
		i += 1
	end
end

show_numbers do |number|
	puts "The current number is #{number}"
end

/ Real Life examples /

array = [1,2,3,4,5]

array.each do |number|
	puts "The number is #{number}"
	number *= 2
end

puts array.inspect