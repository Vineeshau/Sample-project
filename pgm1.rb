# Given an array a = ['cat', 2, 'dog', 'tiger', 4, 9, 'lion', 10].
a = ['cat', 2, 'dog', 'tiger', 4, 9, 'lion', 10]
flag = 0
empty = []
vowels = ['a','e','i','o','u']
sum = 0
#1.Fetch all integer elements from the above array
a.map do |val|
	if val.is_a? Integer
		puts val
	end
end
puts "__________________________________________________"
#2.Find the index of all string elements from the array
a.map do |val|
	if val.is_a? String
		puts a.index(val)
	end
end
puts "__________________________________________________"
#3.Total count of elements from the array
puts a.length
puts "__________________________________________________"

#4.Check if 'leopard' is present in the array
a.map do |val|
	if val == 'leopard'
		flag = 1
	else
		flag = 0
	end
end
if flag == 1
	puts "present in the array"
else
	puts "Not present"
end
puts "__________________________________________________"

#5.Return all elements having vowels
a.map do |val|
	vowels.map do |vow|
		if val.is_a? String
			if val.include?(vow)
				puts val
				break
			end
		end
	end
end
puts "__________________________________________________"


#6.Compute the sum of all integer elements in the array and push the sum to the array
a.map do |val|
	if val.is_a? Integer
		sum += val
	end
end
a.push(sum)
puts a
puts "__________________________________________________"

#7.Fetch the last 3 elements from the array
puts a.slice(6, 8)
puts "__________________________________________________"

#8.Replace all vowels in the array with '$' symbol
a.map do |val|
	if val.is_a? String
		puts val.gsub(/[aeiou]/i, '$')
	end
end
puts "__________________________________________________"

#9.Check whether first and last element are the same
first = a.slice(0)
last = a.slice(8)
if first == last
	puts "Same"
else
	puts "Not same"
end
puts "__________________________________________________"

#10.Reverse the array
puts a.reverse()
puts "__________________________________________________"

#11.Delete element @ index 2
a.delete_at(2)
puts a

# 12.Given 2 arrays a = [1, 2, 3] and b = [2, 3, 4]. Return all common elements
a = [1,2,3]
b = [2,3,4]

for i in 0..2 do
	for j in 0..2 do
		if a[i] == b[j]
			puts a[i]
		end
	end
end







