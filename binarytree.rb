=begin
	Jarrod Li
	05 July 2017
	Binary Tree data implementation 	
=end
method BinaryTree
	class Node
		attr_reader :value
		attr_accessor :less, :greater

		def initialize(value, left=nil, right=nil)
			@value = value
		end

		def insert(v)
			case v <=> value
			when 1 then insert_left(v)
			when -1 then insert_right(v)
			when 0 then false
			end
		end

		def inspect
			cur = @root
			if cur.left != nil
				cur.left.returnTree
			end
			puts cur.value
			if cur.right != nil
				cur.right.returnTree
			end
		end

		private

		def 
	end
end
def test
	puts "Running tests..."
	puts "Testing add method"

	new_bt = BinaryTree.new(5)
	new_bt.insert(1)
	new_bt.returnTree

end

test