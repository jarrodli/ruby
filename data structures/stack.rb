=begin
	Jarrod Li
	03 July 2017
	stack implementation using classes
=end

class Node
	attr_accessor :value, :nnode

	def initialize(value, nnode) 
		@value = value
		@nnode = nnode
	end
end

class Stack
	attr_accessor :head

	def initialize
		@head = nil
	end

	def push(value)
		n = @head
		@head = Node.new(value, n)
	end

	def pop
		@head = @head.nnode
	end
end

# unit tests

def test
	stack = Stack.new
	stack.push(4)
	stack.push(3)
	stack.push(8)
	stack.pop
	stack.pop
	print stack.head.value
end

test