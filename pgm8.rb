#8. A music festival wants to keep track of the number of people attending each of its stages. The attendance data is stored in an array of arrays, where each inner array contains the name of the stage and the number of people attending. The festival wants to find out which stage had the highest attendance and how many people attended that stage. 
attendance_data = [ 

  ["Main Stage", 5000], 

  ["Rock Stage", 3000], 

  ["Dance Stage", 7000], 

  ["Acoustic Stage", 2000] 

] 
max = 0
name = ''
attendance_data.each do |data|
    if data[1] > max
        max = data[1]
        name = data[0]
    end
end
puts "#{name} had the highest attendance with #{max} people"

   



