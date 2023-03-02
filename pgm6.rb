#6.Suppose you are designing a class called "BankAccount" in Ruby that has the following attributes and behaviors:
#Attributes:
#•balance (float)
#•account_number (string)
#Behaviors:
#•deposit(amount)-adds the amount to the balance
#•withdraw(amount) -subtracts the amount from the balance
#•display_balance -prints the current balance
#•account_info -prints the account number and current balance
#You want to make sure that the balance and account number are only accessible within the class, and that the deposit and withdraw methods can only be called by objects of the class.

class BankAccount
	def initialize(balance, account_no)
		@balance = balance
		@account_no = account_no
	end
	def deposit
		print "Enter the deposit amount :"
		amount = gets.chomp.to_i
	end
	def withdraw
		print "Enter the withdraw amount :"
		amount = gets.chomp.to_i
	end
	private
	def display
		puts "Current Blance is : #{@balance}"
	end
	private
	def account_info
		puts "Account no is is : #{@account_no} and Current Blance is : #{@balance}"
	end
end
bank = BankAccount.new(1000,12345678)
bank.deposit
bank.withdraw

