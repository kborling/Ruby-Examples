Struct.new("Myself", :name, :location)

myself = Struct::Myself.new
myself.name = "Kevin Borling"
myself.location = "Earth"

puts myself.inspect

/ Struct Class /
Person = Struct.new(:name, :location) do
	/ Override to_s method /
	def to_s
		"<#{name}, #{location}>"
	end

	def travel
		puts "Going to #{location} location..."
	end

end # End Struct class

myself = Person.new("Unknown", "Undisclosed")

puts myself

myself.travel