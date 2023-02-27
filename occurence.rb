    print "enter the string :"
    word = gets.chomp
    count = 1
    char = ''
    letters = word.split('')
    # puts "word is: #{letters}"
    result = {}
    letters.each do |char|
        # puts "#{char}"
        if result.key?(char)
            result[char] += 1
        else
            result.store("#{char}", 1)
        end
    end
puts "The letter is count is #{result}"

