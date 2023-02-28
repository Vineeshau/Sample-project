#2. You are creating a program that determines if a number is positive, negative, or zero. Write a Ruby program that takes a number as input and outputs whether it is positive, negative, or zero. 
print "Enter the number :"
number = gets.chomp.to_i
if number >0
	puts "Positive"
elsif number == 0
	puts "zero"
else
	puts "Negative"
end