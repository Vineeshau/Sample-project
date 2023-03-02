#1.A company has two types of employees: regular employees and managers. All employees have a name and a salary, but managers also have a bonus percentage that is added to their salary.
#Write a program that creates two classes, Employee and Manager, where Manager inherits from Employee. 
#The Employee class should have methods to get and set the name and salary, and the Manager class should have an additional method to get and set the bonus percentage.
class Employee
	def initialize(name, salary, days)
		@name = name
		@salary = salary
		@days = days
	end
	def get
		puts "Employee"
		puts "Name is : #{@name}"
		puts "Salary is : #{@salary}"
	end
	def display1()
		puts @name 
		puts @salary 
	end
end
class Manager < Employee
	def display1
		super
	end
	def bonus
		sum = @salary / @days
		puts "Bonus is : #{(sum / @salary * 100).round(1)}%"
	end
end
man = Manager.new('vinu', 10000.0,30)
man.display1
man.bonus
