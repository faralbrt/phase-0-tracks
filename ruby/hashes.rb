# Plan (pseudocode)
# - create a hash for: name, age, number of children, decor theme, has discount.
# - ask the user to enter this information (convert to proper data type)
# - Print the hash to screen
# - Ask the user which field he would like to update.
#     if its not 'none'
#       update the key
#     otherwise
#       skip
# - print the final result of the hash 

def to_boolean(string)
  if string.downcase == 'y'
    string = true
  elsif string.downcase == 'n'
    string = false
  end
end

client_info = {}
puts "Name:"
client_info[:name] = gets.chomp
puts "Age:"
client_info[:age] = gets.chomp.to_i
puts "Number of Children:"
client_info[:number_of_children] = gets.chomp.to_i
puts "Decor Theme:"
client_info[:decor_theme] = gets.chomp
puts "Discount? (y/n)"
client_info[:discount] = to_boolean(gets.chomp)
p client_info
puts "--------------"
puts "--------------"
puts "--------------"
puts "--------------"
puts "Please enter the field you would like to update: (type 'none' otherwise)"
update_key = gets.chomp.downcase.gsub(' ','_')
if update_key != 'none'
  update_key = update_key.to_sym
  puts "Please enter the new data"
  client_info[update_key] = gets.chomp
end

puts "This is your updated information:"
puts "=================================="
puts client_info