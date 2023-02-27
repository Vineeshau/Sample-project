print "enter the array length :"
length = gets.chomp.to_i
sum = 0
array = []
print "enter the array elements :"
for i in 1..length do
    array.push(gets.chomp.to_i)
end
array.each do |num|
    # puts "Array is : #{num}"
    if num % 2 == 0 
        sum = sum + num
    end
end
puts "sum of even number is : #{sum}"

