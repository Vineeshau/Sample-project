#5.  Given an array of strings, write a method to return a new array containing only the strings with a length between 4 and 8 (inclusive). 
def stLength
    print "enter the array length :"
    length = gets.chomp.to_i
    array = []
    array_length = []
    print "enter the array elements :"
    for i in 1..length do
        array.push(gets.chomp)
    end
    array.each do |num|
        num.length >= 4 && num.length<=8 ? array_length.push(num) : ''
    end
    return array_length
end
puts "The result is :#{stLength}"

