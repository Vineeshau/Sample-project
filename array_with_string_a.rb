def letter
    print "enter the array length :"
    length = gets.chomp.to_i
    sum = 0
    array = []
    array_a = []
    print "enter the array elements :"
    for i in 1..length do
        array.push(gets.chomp)
    end
    array.each do |num|
        num.chars.each do |character|
            if character == 'a'
                array_a.push(num)
                break
            end
        end
    end
    return array_a
end
puts "The result is :#{letter}"

