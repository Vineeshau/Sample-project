#7. A company wants to track the number of sales made by each of its salespeople. The sales data is stored in an array of hashes, where each hash contains the name of the salesperson and the number of sales made. The company wants to find out who made the most sales and how many sales they made. 
sales_data = [ { "name" => "Alice", "sales" => 10 }, 
{ "name" => "Bob", "sales" => 20 }, 
{ "name" => "Charlie", "sales" => 35 }, 
{ "name" => "Dave", "sales" => 25 } ]
max = 0
name = ''
sales_data.each do |data|
    if data['sales'] > max
        max = data['sales']
        name = data['name']
    end
end
puts "Largest is : #{name} made the most sales with #{max} sales"

   



