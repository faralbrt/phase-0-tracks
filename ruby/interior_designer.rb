#HASHES
interior_designer_app = {
  name: "",
  address: "",
  email: "",
  phone: "",
  fav_shade_of_blue: "",
  wallpaper_pref: "",
  ombre_is: ""
}





# DRIVER CODE -- Interviewee
puts "Welcome to the interview!"
puts "--------------------------"
puts "What is your name?"
interior_designer_app[:name] = gets.chomp
puts "What is your address?"
interior_designer_app[:address] = gets.chomp
puts "What is your email?"
interior_designer_app[:email] = gets.chomp
puts "Thank you for your time!"
puts "------------------------------"
puts "You entered:"
puts "Name: #{interior_designer_app[:name]}"
puts "Address: #{interior_designer_app[:address]}"
puts "Email: #{interior_designer_app[:email]}"
puts "---------------------------------"
puts "---------------------------------"
puts "---------------------------------"

#DRIVER CODE -- Interviewer
puts "The next section is for the interviewer"
puts "---------------------------------------"
password = interior_designer_app[:password]
password = "123e5"
input_password_match = false
loop do
  puts "Please type in your password:"
  input_password = gets.chomp
  break if input_password == password
end
puts "Will you hire #{interior_designer_app[:name]}?"
interior_designer_app[:hired?] = gets.chomp
p interior_designer_app