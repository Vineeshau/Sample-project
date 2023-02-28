#9.  A restaurant has a list of menu items and their prices. The restaurant owner wants to print the menu to the console, along with the price of each item, and then calculate the total cost of a customer's order. Write a Ruby program to solve this problem.
menu = [ {"item" => "idali", "price" => 40},
{"item" => "dhosa", "price" => 50},
{"item" => "porotta", "price" => 10},
{"item" => "chappathi", "price" => 8},
{"item" => "biriyani", "price" => 120},
{"item" => "chiken_curry", "price" => 140},
{"item" => "meals", "price" => 80},
{"item" => "chaya", "price" => 10} ]
puts "Menu items"
puts "Items		Price"
menu.map do |items|	
	puts "#{items['item']}   	 #{items['price']}" 
end
flag = 0
total = 0
while flag != 1 do
	print "Enter the items orderd :"
	items = gets.chomp
	orderd = []
	if items == 'done'
		flag = 1
	else
		orderd.push(items)
	end
	menu.map do |item|
		orderd.map do |orders|
			if orders == item['item']
				total = total + item['price']
			end
		end
	end
end
puts "Total amount payable #{total}"




