#4.You are creating a program that calculates the discount for a customer's purchase. If a customer spends over $100, they receive a 10% discount. If they spend over $50 but less than or equal to $100, they receive a 5% discount. If they spend less than or equal to $50, they do not receive a discount. Write a Ruby program that takes the customer's purchase amount as input and outputs their discount amount. 
print "Enter the purchase Amount :"
amount = gets.chomp.to_i
discount = 0
total = 0
if amount >= 100
	discount = amount * 10/100
	total = amount - discount
elsif amount >=50 && amount<=100
	discount = amount * 5/100
	total = amount - discount
else
	total = amount - discount
end
puts "current amount is #{amount} discound amount is #{discount} and total amount is #{total}"