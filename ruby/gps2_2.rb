# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # separate the items by the spaces
  # declare an empty hash
  # for each item:
    # create a key using that item
    # set default quantity(which is the value) - the default is 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash




# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # if the key of 'item name' exists
    # if no quantity is inputted,
      # add the default value (which is one) to the existing value
    # otherwise, add the inputted quantity to the existing value
  # Otherwise,
    # create a new key
    # if no quantity is inputted,
      # set the default value (which is one)
    # otherwise, set the value to the inputted quantity
# output: updated hash


# Method to remove an item from the list
# input: key
# steps:
  # If item doesn't exist
    # print "Sorry this item does not exist."
  # Otherwise
    # delete the key-value pair
    # print the new grocery_list
# output: updated grocery_list hash or error message

# Method to update the quantity of an item
# input: key, new value
# steps:
  # if the key exists
    # set the value of the key to the inputted value
    # print the updated pair
  # otherwise,
    # print "Sorry this item does not exist."
# output: updated key-value pair, or error

# Method to print a list and make it look pretty
# input: none(our hash is global)
# steps: 
  # for each key
    # print key and its value like this: 'apples: 1'
# output: hash printed nicely

$grocery_list = {}
# CREATE LIST METHOD
def create_shopping_list(string)
  # grocery_list = {}
  string.split(' ').each do |item|
    $grocery_list[item] = 1
  end
  print_list
end

# ADDING AN ITEM METHOD
def add_item(name, quantity = 1)
  if $grocery_list[name]
    $grocery_list[name] += quantity
  else
    $grocery_list[name] = quantity
  end
  print_list
end

# REMOVE ITEM METHOD
def rem_item(item)
  if $grocery_list[item]
    $grocery_list.delete(item)
    print_list
  else
    puts "Sorry this item does not exist"
  end
end

# UPDATE QUANTITY METHOD
def update_qty(item, quantity)
  if $grocery_list[item]
    $grocery_list[item] = quantity
    print_item(item)
  else
    puts "Sorry this item does not exist"
  end
end

# PRINT THE GROCERY LIST NICELY
def print_list
  $grocery_list.keys.each do |item|
    puts "#{item}: #{$grocery_list[item]}"
  end
end

# PRINT ITEM AND QUANTITY- (FOR UPDATE QTY METHOD)
def print_item(item)
  puts "#{item}: #{$grocery_list[item]}"
end


# TEST
test_string = "carrots apples cereal pizza"
puts "create list method Results:"
create_shopping_list(test_string)

puts "-------------------"
puts "add item to list method Results:"
test_item = 'chocolate'
add_item(test_item)

puts "---------------------------"
puts "remove an item test:"
test_item_rem = 'apples'
rem_item(test_item_rem)

puts "---------------------------"
puts "update the quantity:"
test_item_upd = 'cereal'
update_qty(test_item_upd, 5)

puts "--------------------------------"
puts "print the list nicely"
print_list

# REFLECTON:
