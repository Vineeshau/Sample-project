#12. You need to keep track of the number of occurrences of each letter in a given string. Create a function that accepts a string and returns a hash where the keys are the unique letters in the string and the values are the number of occurrences of each letter. 
print "enter the string :"
word = gets.chomp
count = 1
char = ''
letters = word.split('')
result = {}
letters.map do |char|
    result.key?(char) ? result[char] += 1 : result.store("#{char}", 1)
end
puts "The letter count is #{result}"

