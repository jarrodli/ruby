=begin
	Jarrod Li
	03 July 2017
	Trie data structure // messing around with enumerable
=end

# hashes :: .inject { |carry var, (key, value)| }
# puts (5..10).inject { |x, y| x + y }
# .chars creates an array of characters 

class Trie < Hash
	include Enumerable

	def initialize
		super
	end

	def build(string)
		string.chars.inject(self) { |x, char| x[char] ||= { } }
	end
end

trie = Trie.new
trie.build("Hello")
puts trie