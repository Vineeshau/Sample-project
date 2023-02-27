 employee_data = { 

  "Alice" => 40, 

  "Bob" => 30, 

  "Charlie" => 45, 

  "Dave" => 35 

} 
total = 0
name = ''
employee_data.each do |data|
    # puts "values are : #{data[1]}"
    total += data[1]
end
puts "The total number of hours worked by all employees is #{total}."