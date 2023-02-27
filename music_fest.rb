attendance_data = [ 

  ["Main Stage", 5000], 

  ["Rock Stage", 3000], 

  ["Dance Stage", 7000], 

  ["Acoustic Stage", 2000] 

] 
max = 0
name = ''
attendance_data.each do |data|
    # puts "values are : #{data[1]}"
    if data[1] > max
        max = data[1]
        name = data[0]
    end
end
puts "#{name} had the highest attendance with #{max} people"

   



