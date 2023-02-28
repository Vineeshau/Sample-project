#7. You are creating a program that checks if a given word is a palindrome. A palindrome is a word that is spelled the same way forwards and backwards. For example, "racecar" is a palindrome. Write a Ruby program that takes a word as input, checks if it is a palindrome, and outputs the result. 
print "Enter the word :"
word = gets.chomp
character = word.split('')
if character == character.reverse 
	puts "palindrom" 
else 
	puts "Not Palindrom"
end

