#1. You are creating a program that calculates a student's letter grade based on their numerical grade. If a student's numerical grade is between 90 and 100, they receive an A. If their grade is between 80 and 89, they receive a B. If their grade is between 70 and 79, they receive a C. If their grade is between 60 and 69, they receive a D. If their grade is below 60, they receive an F. Write a Ruby program that takes a student's numerical grade as input and outputs their letter grade. 
print 'Enter the numerical grade :'
percentage = gets.chomp.to_i
if percentage >= 90 && percentage <= 100
	puts "A"
elsif percentage >= 80 && percentage <= 89
	puts "B"
elsif percentage >= 70 && percentage <= 79
	puts "C"
elsif percentage >= 60 && percentage <= 69
	puts "D"
else
	puts "F"
end