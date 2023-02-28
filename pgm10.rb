#10. Alice is collecting data on the ages of the members of her local book club. She has created an array called ages that contains the following values: [28, 35, 42, 51, 39, 44, 32, 48, 29, 36]. Alice wants to find the average age of the members of her book club. What is the average age of the book club members? 
ages = [28, 35, 42, 51, 39, 44, 32, 48, 29, 36]
total_age = 0
avg = 0
ages.map do |data|
    total_age += data
    avg = total_age/ages.length
end
puts " The average age of the book club members is #{avg}"
