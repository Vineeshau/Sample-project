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
    sorted.each do |num|
        avg = sum/sorted.length
    end
    return avg
end
puts "The average is :#{average}"

