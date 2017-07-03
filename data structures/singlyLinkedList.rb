=begin
	Written by: Jarrod Li
	03 July 2017
	Ruby implementation of a singly linked list
=end

class Node
	attr_accessor :value, :nnode

	def initialize(value, nnode) 
		@value = value
		@nnode = nnode
	end
end

class LinkedList
	def initialize
		@head = nil # head points to nothing
	end

	# adds a node on the end of the list
	def add(value)
		if @head != nil 
			current = @head
			while current.nnode != nil
				current = current.nnode
			end
			current.nnode = Node.new(value, nil)
		else
			@head = Node.new(value,nil)
		end
	end

	# deletes the head of a list
	def removeHead
		if @head != nil
			n = @head
			@head = n.nnode
			n.nnode = nil
			return n.value
		end
	end
	
	# returns the values stored in the linked list in a list
	def returnList
		elements = []
		current = @head
		while current != nil
			elements << current.value
			current = current.nnode
		end
		return elements
	end
end

puts "testing if ll implementation works i"
new_ll = LinkedList.new
new_ll.add(7)
new_ll.add(24)
new_ll.add(19)
new_ll.add(4)
list = new_ll.returnList
puts list

puts "testing if ll implementation works ii"
new_ll.removeHead
list = new_ll.returnList
puts list

puts "testing an empty list"
test_ll = LinkedList.new
test_ll.removeHead
testlist = test_ll.returnList
puts testlist
