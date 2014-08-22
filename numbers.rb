require "bigdecimal"
require "money"
/ Money in cents /
price = Money.new(1000)
puts price

/ Adds big decimal library /
a = BigDecimal.new("7.3")

/ Fixnum /
number = 100
number.class
/ Float /
number = 100.5
number.class
/ Convert String to Fixnum /
number = "100"
number.to_i
/ Convert String to Float /
number.to_f
/ 5^10 /
puts 5e10

10 <=> 20
/ -1 /
20 <=> 10
/ 0 /

a = 10
b = 20
a.eql?(b)
/ Check if same type and value /

number = 100.05

sprintf("$%0.2f", number)
/ Currency Printing /