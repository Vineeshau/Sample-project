ages = [28, 35, 42, 51, 39, 44, 32, 48, 29, 36]
total_age = 0
avg = 0
ages.each do |data|
    # puts "values are : #{data}"
    total_age += data
    avg = total_age/ages.length
end
puts " The average age of the book club members is #{avg}"