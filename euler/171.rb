=begin
	Jarrod Li
	Project Euler Problem 171
	31 July 2017
=end

class Array
	def square!
		self.map!{|x| x * x}
	end
end

def nSquareSum(n)
	c = 0
	a = n.to_s.split('').map(&:to_i).square!.each {|x| c += x}
	c
end

sum = 0

for i in 1..(10**20)
	sum += nSquareSum(i)
end
puts sum