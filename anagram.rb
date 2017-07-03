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
	def build
		newH = Hash.new(0)
		string.each_char { |c| newH[c] += 1 } 
		newH
	end
end

=begin class Anagram < Frequency
	def initialize(s1, s2)
		@s1 = s1
		@s2 = s2
	end
	def check
		return true if @s1.build == @s2.build
	end
end
=end

#t = Frequency.new("string")
#l = t.build
#l.each { |x, y| puts "#{x}: #{y} times \n"}


def isAnagram(str1, str2) 
	Frequency.new(str1).build == Frequency.new(str2).build ? true : false
end

puts isAnagram(gets.chomp.to_s, gets.chomp.to_s)