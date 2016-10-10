# WORKING WITH ARRAYS

dev_name = ["Albert", "Derek", "John", "Andrew"]

# array .each demonstration 
dev_name.each do |name|
  p "Good job #{name}!"
  name.chop
end

puts dev_name

# array .map demonstration
dev_name.map! do |name|
  name.chop
end

puts dev_name


# WORKING WITH HASHES
dev_module = {1 => "Git", 2 => "HTML", 3 => "CSS", 4 => "Ruby"}

dev_module.each do |mod, subject|
  p "Week #{mod}: #{subject}"
end

puts dev_module


# WORKING WITH DELETE_IF

numbers = [1, 2, 3, 4, 5, 8, 3, 6, 9]

# array demonstration
numbers.delete_if { |numbers| numbers < 4 }
p numbers

# hash demonstration
dev_module.delete_if { |key, value| key < 3 }
p dev_module


# WORKING WITH KEEP_IF

# array demonstration
numbers = [1, 2, 3, 4, 5, 8, 3, 6, 9]
numbers.keep_if { |numbers| numbers < 4 }
p numbers

# hash demonstration
dev_module = {1 => "Git", 2 => "HTML", 3 => "CSS", 4 => "Ruby"}
dev_module.keep_if { |key, value| key < 3 }
p dev_module


# WORKING WITH SELECT

# array demonstration
numbers = [1, 2, 3, 4, 5, 8, 3, 6, 9]
numbers.select! { |numbers| numbers < 4 }
p numbers

# hash demonstration
dev_module = {1 => "Git", 2 => "HTML", 3 => "CSS", 4 => "Ruby"}
dev_module.select! { |key, value| key < 3 }
p dev_module 


# WORKING WITH DROP_WHILE

# array demonstration
numbers = [1, 2, 3, 4, 5, 8, 3, 6, 9]
numbers = numbers.drop_while { |numbers| numbers < 4 }
p numbers

# hash demonstration
dev_module = {1 => "Git", 3 => "CSS", 4 => "Ruby", 2 => "HTML"}
dev_module.delete_if { |key, value| key < 3 ? true : break }
p dev_module