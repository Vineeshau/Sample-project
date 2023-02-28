#3. You are creating a program that determines if a person is eligible to vote in a particular election. In order to vote, a person must be at least 18 years old and a citizen of the country in which the election is taking place. Write a Ruby program that takes a person's age and citizenship status as input and outputs whether they are eligible to vote 
print "Enter the age :"
age = gets.chomp.to_i
print "Enter the Citizenship status :"
status = gets.chomp

if age >= 18 && status == 'yes'
	puts "Eligible to vote"
else
	puts "Not Eligible to vote"
end