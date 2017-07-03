=begin
	Jarrod Li
	03 July 2017
	checks if two words are anagrams using hash tables
=end

class Frequency
	attr_accessor :string
	def initialize(string)
		@string = string
	end
	def build(string)
		newH = Hash.new(0)
		string.each_char { |c| newH[c] += 1 } 
		newH
	end
end

class Anagram < Frequency
	def initialize(s1, s2)
		@s1 = s1
		@s2 = s2
	end
	def check
		return true if @s1.build = @s2.build
	end
end

t = Anagram.new("hello", "olleh")
l = t.check
puts l

#t = Frequency.new("string")
#l = t.build
#l.each { |x, y| puts "#{x}: #{y} times \n"}
