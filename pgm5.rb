#A company wants to track the performance of its employees based on their sales data. The sales data is given in the form of an array of hashes, where each hash represents the sales data forone employee. Each hash has the following keys: name, sales_target, actual_sales, and commission_rate. The company wants to calculate the following statistics:1.The total sales for each employee (actual sales + commission).2.The percentage of sales achieved by each employee (actual sales / sales target * 100).3.The names of the employees who did not meet their sales target.Write a program in Ruby that takes the sales data array and outputs a new array of hashes with the following keys: name, total_sales, sales_percentage, and target_met. The target_metkey should be trueif the employee met their sales target, and falseotherwise.
employee = [{name:"vinu", sales_target:20000.0, actual_sales:4000.0,commision_rate:30.0},
{name:"shiyas",sales_target:12000.0,actual_sales:5000.0,commision_rate:35.0},
{name:"akshay",sales_target:11000.0,actual_sales:4500.0,commision_rate:33.0},
{name:"yadu",sales_target:50000.0,actual_sales:50000.0,commision_rate:38.0}]
flag = 0
count = 0
total = 0
sum = 0
target = false
employee.map do |key|
	total = key[:actual_sales]+key[:commision_rate]
	sum = key[:actual_sales]/key[:sales_target] * 100
	if key[:sales_target] == key[:actual_sales]
		count = 1
	else
		count = 0
	end
	if count == 1
		target = true
	else
		target = false
	end
	value = key[:name]
	sales = total
	percentage = sum
	updated = {
	name: value,
	total_sales: sales,
	sales_persentage: percentage,
	target_met: target
	}
puts "name = #{updated[:name]} \ntotal_sales = #{updated[:total_sales]} \nsales_persentage = #{updated[:sales_persentage]} \ntarget_met = #{updated[:target_met]}"
end


