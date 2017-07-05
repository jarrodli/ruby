=begin
	Jarrod Li
	05 July 2017
	Binary Tree data implementation 	
=end

class Node
	attr_accessor :less, :greater

	def initialize(value, less=nil, greater=nil)
		@value = value
		@less = less
		@greater = greater
	end
end

class BinaryTree
	def initialize(value)
		@root = Node.new(value)
	end

	def add(value)
		cur = @root
		if node.value < cur.value
			if(cur.left != nil)
				cur.left = Node.new(value)
			else
				cur.left.add(value)
			end
		end
		else if node.value > cur.value
			if(cur.right != nil)
				cur.right = Node.new(value)
			else
				cur.right.add(value)
			end
		end
	end

	def returnTree
		cur = @root
		if cur.left != nil
			cur.left.returnTree
		end
		puts cur.value
		if cur.right != nil
			cur.right.returnTree
		end
	end
end

def test
	puts "Running tests..."
	puts "Testing add method"

	new_bt = BinaryTree.new(5)
	new_bt.add(1)
	new_bt.returnTree

end

test