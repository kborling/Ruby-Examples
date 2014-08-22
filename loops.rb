
/ While Loop /
i = 0

while i <= 10
	puts "i is #{i}"
	i += 1
end

puts "The final value of i is #{i}"


/ Until Loop /
i = 0

until i > 10 do
	puts "i is now #{i}"
	i += 1	
end

/ Runs until name is Kevin /
name = ""

until name == "Kevin" do
	print "What is your name? "
	name = gets.chomp
	puts "Your name is #{name}"
end

/ For Loop /

array = [1, 2, 3, 4, 5, 6]

/ Prints each value in array /
for i in array do
	puts "i is #{i}"
end

/ Prints numbers from 1 to 10 /
for i in 1..10 do
	puts "i is #{i}"
end

/ Nested for loop /
for i in 1..5 do
	for j in 1..5 do
		puts "i is #{i}, j is #{j}"
	end
end

/ %w Ensures each value is a string /
for animal in %w(dog cat horse goat snake) do
	/ next Skips over cat /
	next if animal == "cat"
	/ Breaks out of loop once it gets to cat /
	break if animal == "cat"
	puts "The current animal is #{animal}"
end


name = ''

loop do
	print "Enter your name: "
	name = gets.chomp
	if name == "Kevin"
		puts "Hi #{name}, we've been expecting you."
		break
	end
end


animals = %w(dog cat horse goat snake)
count = 0

for animal in animals
	puts "The current animal is #{animal}"
	break if count == 10
	count += 1
	/ Restarts loop whenever horse is read /
	retry if animal == 'horse'
	/ Re-do the current iteration /
	redo if animal == 'horse'
end

