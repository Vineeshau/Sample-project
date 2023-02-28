#2. Given an array of integers, write a method to return a new array with all the odd numbers removed. 
print "enter the array length :"
length = gets.chomp.to_i
array = []
even = []
print "enter the array elements :"
for i in 1..length do
    array.push(gets.chomp.to_i)
end
array.map do |num|
    num % 2 == 0 ? even.push(num) : ''
end
puts "array of even number is : #{even}"


