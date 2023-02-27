users = [

  {"username"=>"user1","password"=> "pass1"}, 

  {"username"=>"user2", "password"=> "pass2"}, 

  {"username"=>"user3","password" => "pass3"} 

] 
print "Enter the user name :"
userName = gets.chomp
print "Enter the password :"
password = gets.chomp
users.each do |data|
# puts "values are : #{data}"
    if data['password'] == password && data['username'] == userName
        puts "Login Successful"
    end
end

