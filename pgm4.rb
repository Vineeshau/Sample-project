#4. Given an array of integers, write a method to return a new array with the elements in reverse order. 
print "enter the array length :"
length = gets.chomp.to_i
array = []
array_rev = []
print "enter the array elements :"
for i in 1..length do
    array.push(gets.chomp)
end
puts "Reversed array is :#{array.reverse}"

