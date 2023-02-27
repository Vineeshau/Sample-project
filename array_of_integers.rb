print "enter the array length :"
length = gets.chomp.to_i
array = []
# even = []
print "enter the array elements :"
for i in 1..length do
    array.push(gets.chomp.to_i)
end
array.each do |num|
    # puts "Array is : #{num}"
    if num % 2 == 0 
        even.push(num)
    # if num % 2 != 0 
    #     array.delete(num)
    end
end
puts "array of even number is : #{even}"
# puts "array of even number is : #{array}"

