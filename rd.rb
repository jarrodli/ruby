# 
# Jarrod Li
# 03 July 2017
# chooses a random day bc keely can't decide
#

def main
	x = rand(7)
	case x
	when 0 then puts "monday"
	when 1 then puts "tuesday"
	when 2 then puts "wednesday"
	when 3 then puts "thursday"
	when 4 then puts "friday"
	when 5 then puts "saturday"
	when 6 then puts "sunday"
	end
end

main
