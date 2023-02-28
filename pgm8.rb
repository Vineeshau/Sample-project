#8. You are creating a program that calculates the factorial of a given number. The factorial of a number is the product of all positive integers up to and including that number. For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120. Write a Ruby program that takes a number as input, calculates its factorial, and outputs the result. 
print "Enter the number :"
number = gets.chomp.to_i
factorial = 1
for i in number.downto(1) do
	factorial = factorial * i
end
puts "Factorial is #{factorial}"