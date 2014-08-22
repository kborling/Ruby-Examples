print "Please enter a number\n"

number = gets.chomp

puts number

/ All The Same /
s = String.new("Hewwo Worwd")
s = "Hewwo Worwd"
s = 'Hewwo Worwd'
/ Interpolation #{} /
puts "Look #{s}"

/ Different way to build a String Here Doc/
name = <<-STR
Kevin
Borling
STR

puts name

name.upcase
name.downcase
name.reverse

/ Can multiply a string /
puts name * 3

name + number
/ Same /
name + " " + number
name << " " << number
/ Prints Everything in Variable /
puts name.inspect
/ Remove Trailing Whitespace /
name.chop
/ Remove leading-trailing whitespace /
name.chomp
/ Check string for word /
name.include?("kevin")