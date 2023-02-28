#11. You have a list of usernames and passwords stored in a hash in your Ruby program. You need to create a login function that accepts a username and password as parameters and checks if they match the values in the hash. If the username and password are valid, the function should return "Login Successful". Otherwise, it should return "Invalid username or password". 
users = [

  {"username"=>"user1","password"=> "pass1"}, 

  {"username"=>"user2", "password"=> "pass2"}, 

  {"username"=>"user3","password" => "pass3"} 

] 
print "Enter the user name :"
userName = gets.chomp
print "Enter the password :"
password = gets.chomp
flag = 0
users.each do |data|
    if data['password'] == password && data['username'] == userName
        puts "Login Successful"
        flag = 1
    end
end
flag == 0 ? puts "Invalid username or password" : ''

