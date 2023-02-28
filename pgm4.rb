#4. Emily is a manager who wants to keep track of her employees' work schedules. She wants to write a Ruby program that uses a hash to store the employees' names as keys and their work schedules as values. She also wants to print out the schedule of a specific employee based on their name, but only if their name is present in the hash.Help Emily write a Ruby program to solve this problem using a hash and conditions.
print "Enter the number of employee :"
num = gets.chomp.to_i
hash = {}
flag = 0
result = ''
while num>0
	print "Enter the name :"
	key = gets.chomp
	print "work shedule :"
	time = gets.chomp
	hash.store(key,time)
	num -=1
end
print "Enter the employee name : "
name = gets.chomp
hash.each do |key, val|
	if key == name
		result = val
		flag = 1
	else
		flag = 0
	end
end
if flag == 1
	puts result
else
	puts "Not found"
end
# puts hash[name]

