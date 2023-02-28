#6. A teacher wants to calculate the average grade for a class of students. The grades are stored in an array of integers. However, the teacher wants to exclude the lowest grade and the highest grade from the calculation, as they may not be representative of the overall performance. 
def average
    avg = 0
    grades = [88,92,78,85,90,82,75,95]
    array_a = []
    puts "sorted array is #{grades.sort()}"
    sorted = grades.sort()
    sorted.shift
    sorted.pop
    sum = 0
    sum = sorted.sum
    sorted.map do |num|
        avg = sum/sorted.length
    end
    return avg
end
puts "The average is :#{average}"

