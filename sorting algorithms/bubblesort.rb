=begin
	Jarrod Li
	Bubblesort algorithm
=end

class Sort
	attr_accessor :list

	def initialize(list)
		@list = list
	end

	def bubblesort
		return unless @list.size > 1
		loop do
			swapped = false
			(@list.size - 1).times do |i|
				if @list[i] > @list[i + 1] 
					s = @list[i + 1]
					@list[i + 1] = @list[i]
					@list[i] = s
					swapped = true
				end
			end
			break if !swapped
		end
	end

	def each(&block)
		@list.each(&block)
	end
end

# tests
# test 0
arr0 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
ca0 = [1, 2, 3, 4, 5, 6, 7, 8 , 9, 10]
t0 = Sort.new(arr0)
t0.bubblesort()
fail if arr0 != ca0

# test 1
arr1 = [2, 1]
ca1 = [1, 2]
t1 = Sort.new(arr1)
t1.bubblesort()
fail if arr1 != ca1 

# test 2
arr2 = [1, 3, 2, 5]
ca2 = [1, 2, 3, 5]
t2 = Sort.new(arr2)
t2.bubblesort()
fail if arr1 != ca1 

# test 3
arr3 = [10, 6, 5, 1, 0]
ca3 = [0, 1, 5, 6, 10]
t3 = Sort.new(arr3)
t3.bubblesort()
fail if arr3 != ca3

# test 4
arr4 = [1001, 2023, 123, 43, 6, 67]
ca4 = [6, 43, 67, 123, 1001, 2023]
t4 = Sort.new(arr4)
t4.bubblesort()
fail if arr4 != ca4

# test 5
arr5 = []
ca5 = []
t5 = Sort.new(arr4)
t5.bubblesort()
fail if arr5 != ca5