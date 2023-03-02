#4.Once upon a time, there was a programmer named Alice who was working on a new project in Ruby.
# She wanted to create a class to represent a bank account, with methods to deposit and withdraw money. She also wanted to initialize each account with a starting balance.
class Bank
	def initialize(balance)
		@balance = balance
	end
	def display
		puts "Blance is : #{@balance}"
	end
	def deposit
		print "Enter the deposit amount :"
		amount = gets.chomp.to_i
		puts "Balance is : #{@balance += amount}" 
	end
	def withdraw
		print "Enter the withdraw amount :"
		amount = gets.chomp.to_i
			puts "Balance is : #{@balance -= amount}"
	end
end
bk = Bank.new(900.0)
bk.display
bk.deposit
bk.withdraw
