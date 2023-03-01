#2.Mike has a list of books that he wants to keep track of. He wants to store the name, author, and year of publication for each book in a hash. He also wants to be able to search for a book by its name and update its year of publication.Help Mike write a Ruby program to solve this problem using hash operations.
books = {"To Kill a Mockingbird" => { author: "Harper Lee", year: 1960 },"1984" => { author: "George Orwell", year: 1949 },"The Catcher in the Rye" => { author: "J.D. Salinger", year: 1951 },"Pride and Prejudice" => { author: "Jane Austen", year: 1813 },"The Great Gatsby" => { author: "F. Scott Fitzgerald", year: 1925 }}
print "Enter the book name :"
name = gets.chomp
flag = 0
books.map do |key, val|
	if key == name
		puts "Book found...#{key}"
		print "Update year :"
		year = gets.chomp
		val['year']=year
		flag = 1
		break
	else
		flag = 0
	end
end

puts books
if flag != 1
	puts "Book not found"
end
