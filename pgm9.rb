#A company wants to keep track of the number of hours worked by each of its employees. The employee data is stored in a hash, where each key is the employee name and the value is the number of hours worked. The company wants to find out the total number of hours worked by all employees.
 employee_data = { 

  "Alice" => 40, 

  "Bob" => 30, 

  "Charlie" => 45, 

  "Dave" => 35 

} 
total = 0
name = ''
employee_data.map do |data|
    total += data[1]
end
puts "The total number of hours worked by all employees is #{total}."
