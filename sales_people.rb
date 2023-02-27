sales_data = [ { "name" => "Alice", "sales" => 10 }, 
{ "name" => "Bob", "sales" => 20 }, 
{ "name" => "Charlie", "sales" => 15 }, 
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

   



