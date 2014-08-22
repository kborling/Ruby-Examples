require 'awesome_print'

h = Hash.new
h = {}

h = {"hello" => "world"}

h["name"] = "kevin"

kevin = Hash.new

kevin["name"] = "kevin"
kevin["location"] = "Washington"

/ Prints Washington /
kevin['location']

h = Hash.new { |hash, key| hash[key] = "Default value for #{key}"}

ap h
ap kevin
/ Returns array of different keys /
kevin.keys

/ Returns array of values /
kevin.values

/ Returns true if found /
kevin.has_value?('name')

/ Return true if empty /
kevin.empty?

/ Remove all keys and values /
kevin.clear

/ Converts hash into an array /
array = kevin.to_a

/ Delete location key /
kevin.delete_if {|key, value| key == "location"}

/ Iterate and print each value /
kevin.each do |key, value|
	puts "The key at #{key} is #{value}"
end

/ Returns specific value at key /
kevin.select {|key, value| key == 'location'}

/ Returns first value found at specified key /
kevin.find {|key, value| key == 'location'}

/ Returns every value found at specified key /
kevin.find_all {|key, value| value.match('kev')}

kevin.any? {|key, value| value.match('kev')}

kevin.all? {|key, value| value.match('kev')}

