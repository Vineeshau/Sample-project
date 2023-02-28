#1 .John has a list of 10 numbers. He wants to find the sum of all numbers greater than 5 and also the index of the first number that is greater than 8. Help John write a Ruby program using the injectand each_with_indexmethods to solve this problem.
print "Enter the numbers :"
array = []
sum = 0
reject = 0
for i in 1..5 do
	num = gets.chomp.to_i
	array.push(num)
end

reject = array.reject {|num| num < 5}
sum = reject.inject(0) { |sum, number| sum + number}
array.each_with_index do |num, idx|
	if num >= 8
		puts "index is #{idx}"
		break
	end
end
puts "Sum of all numbers #{sum}"