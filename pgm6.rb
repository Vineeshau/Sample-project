#6. You are creating a program that checks if a given year is a leap year. A year is a leap year if it is divisible by 4, except for years that are divisible by 100 but not by 400. Write a Ruby program that takes a year as input and outputs whether it is a leap year or not. 
print "Enter the Year :"
year = gets.chomp.to_i
leap_year = ''
leap_year = year % 4 == 0 
leap_year = leap_year && (year % 100 != 0 || year % 400 == 0)
if leap_year 
  puts "Leap year" 
 else
  puts "Not a leap year"
 end