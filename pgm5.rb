#5. You are creating a program that calculates the total cost of a customer's order. The cost of an item is $10. If a customer orders 10 or more items, they receive a 10% discount on their entire order. Write a Ruby program that takes the number of items the customer is ordering as input and outputs their total cost. 
print "Enter the number of items :"
items = gets.chomp.to_i
item_cost = 10
discount = 0
total_price = 0
total_amount = item_cost * items
items >=10 ? discount = total_amount * 10/100 : ''
total_price = total_amount - discount
puts "Total cost is #{total_price}"
