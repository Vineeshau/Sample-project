print "enter the array length :"
length = gets.chomp.to_i
sum = 0
array = []
print "enter the array elements :"
for i in 1..length do
    array.push(gets.chomp.to_i)
end
array.map do |num|
    num % 2 == 0 ? sum += num : ''
end
puts "sum of even number is : #{sum}"

