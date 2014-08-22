/ Writing to my_file.txt /
File.open("./my_file.txt", "w+") do |file|
	file.puts "Hello, bacon!"
end

/ Reading from my_file.txt /
puts IO.readlines('my_file.txt')
