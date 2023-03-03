#Problem: A bookstore wants to keep track of their inventory. Each book has a title, author, and price. 
#Create a Book class that can store this information, as well as a Bookstore class that can add books to its inventory, display the entire inventory, 
#and calculate the total value of the inventory.
class Bookstore
	def initialize
		@books = []
	end
end
class Book < Bookstore
	def add_books(books_details)
		@books.push(books_details)
	end
	def display
		puts "Book Details"
		print @books
	end
	def total_price
		puts "\nTotal Price is : #{@books.map {|x| x[:price]}.sum}"
	end
end
book_store = Book.new
book_inventory = [{name: 'Game of thrones', author: 'George R. R. Martin', price: 5000},
        {name: 'Harry potter', author: 'J. K. Rowling', price: 8000}]
book_inventory.each do |book|
	book_store.add_books(book)
end
book_store.display
book_store.total_price