module FormatAttributes
	def formats(*attributes)
		@format_attributes = attributes
	end

	def format_attributes
		@format_attributes
	end
end

module Formatter
	def display
		self.class.format_attributes.each do |attribute|
			puts "[#{attribute.to_s.upcase}] #{send(attribute)}"
		end
	end
end

class Resume
	extend FormatAttributes
	include Formatter
	attr_accessor :name, :phone_number, :email, :experience
	formats :name, :phone_number, :email, :experience
end # End Resume class

class CV
	extend FormatAttributes
	include Formatter
	attr_accessor :name, :experience
	formats :name, :experience
end # End CV class

resume = Resume.new
resume.name = "Kevin Borling"
resume.email = "kevin@kevinborling.com"
resume.phone_number = "(224) 430-9140"
resume.experience = "Ruby"

resume.display

puts "--------------------"

cv = CV.new
cv.name = "Kevin Borling"
cv.experience = "Ruby"

cv.display