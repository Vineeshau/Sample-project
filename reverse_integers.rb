def reverse
    print "enter the array length :"
    length = gets.chomp.to_i
    array = []
    array_rev = []
    print "enter the array elements :"
    for i in 1..length do
        array.push(gets.chomp)
    end
        array.reverse.each do |num|
            array_rev.push(num)
        end
    return array_rev
end
puts "Reversed array is :#{reverse}"