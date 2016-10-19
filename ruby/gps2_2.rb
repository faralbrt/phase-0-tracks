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
$grocery_list = {}
def create_shopping_list(string)
  # grocery_list = {}
  string.split(' ').each do |item|
    $grocery_list[item] = 1
  end
  p $grocery_list
end

# TEST
test_string = "carrots apples cereal pizza"
create_shopping_list(test_string)



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

def add_item(name, quantity = 1)
  if $grocery_list[name]
    $grocery_list[name] += quantity
  else
    $grocery_list[name] = quantity
  end
  p $grocery_list
end

# TEST
test_item = 'carrots'
add_item(test_item)

test2_item = 'apples'
test2_quantity = 3
add_item(test2_item, test2_quantity)


# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: