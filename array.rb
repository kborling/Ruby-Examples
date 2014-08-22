/ Same /
array = Array.new
array = []

/ Same /
array.push(1)
array << 2
array << "Hello World"
array += [4]

/ Takes last member of array and returns it /
array.pop

array.length

/ Returns the value at index 3 /
array.index(3)
array[3]
/ Starts from end of array and works backwards /
array[-1]

array1 = [1, 2, 3]
array2 = [4, 5, 6]

array1.sort
/ Set in the bounds and what to check /
array1.sort{|a, b| a<=>b }
/ Reverses array /
array1.sort{|a, b| b<=>a }
/ or /
array1.sort.reverse
/ Forces Operation /
array1.sort!
/ Remove Duplicates /
array1.uniq

/ Iteration /
/ item gets assigned each item inside of array /
array1.each do |item|
puts "I am item #{item} in the array."
end

array1.all? { |item| item > 3 }
/ returns true if all items are > 3 /

array1.any? { |item| item > 3 }
/ returns true if any items are > 3 /

array1.select { |item| item > 3 }
/ Return array of any items > 3 /

array1.reject { |item| item > 3 }
/ Return array of any items not > 3 /

array1.map { |item| item * 2 }
/ Return new array with each item * 2 /

array1.collect { |item| item * 2 }