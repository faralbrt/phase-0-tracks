# DEFINE A METHOD:
# GOAL: TAKES A NAME AND CREATES A FAKE NAME

# PLAN(I found it more efficient to use gsub than to create arrays, iterate, and join them back)
  # - write method to swap the first and last name
  #   - split the name into an array of two words
  #   - reverse the array
  #   - Join the array back into a string

  # - write method to change any vowel to the next vowel in the order of 'aeiou'
  #   -let vowels = 'aeiou' * 2 (this way it handles edge cases more nicely!)
  #   -make the word lowercase
  #     -substitute every instance of /aeiou/ with the vowel of the next index number of that letter

  # - write method to change any consonant to the next consonant in the alphabet
  #   -let consonants = 'bcdfghjklmnpqrstvwxyz' * 2 (handles edge cases nicely)
  #   -make the word lowercase
  #     -substitute every instance of /bcdfghjklmnpqrstvwxyz/ with the vowel of the next index number of that letter

  #   - Test:  "Felicia Torres" will become "Vussit Gimodoe"


full_name = 'Felicia Torres'

# sub-method to swap first and last
def swap_name(string)
  string.split(' ').reverse.join(' ')
end

# sub-method to change vowels to the next
def next_vowel(string)
  # multiply by 2 to handle edge cases
  vowels = 'aeiou' * 2
  string = string.downcase
  string.gsub(/[aeiou]/) do |character|
    char_index = vowels.index(character)
    character = vowels[char_index + 1]
  end
end

# sub-method to change consonants to the next consonant
def next_consonant(string)
  # multiply by 2 to handle edge cases
  consonants = 'bcdfghjklmnpqrstvwxyz' * 2
  string = string.downcase
  string.gsub(/[bcdfghjklmnpqrstvwxyz]/) do |character|
    char_index = consonants.index(character)
    character = consonants[char_index + 1]
  end
end

#MAIN METHOD - alias creator(swaps first and last, switches out vowels and consonants, and capitalizes)
def create_alias(name)
  name = swap_name(name)
  name = next_vowel(name)
  name = next_consonant(name)
  name = name.split(' ')
  name.first.capitalize!
  name.last.capitalize!
  name = name.join(' ')
end

# DRIVER CODE
alias_hash = {}
loop do
  puts "Enter the full_name for alias creation (type 'quit' when done)"
  user_input = gets.chomp
break if user_input == 'quit'
  output_alias = create_alias(user_input)
  alias_hash[user_input] = output_alias
  puts output_alias
end
puts 'Here is the list of aliases:'
puts '----------------------------'
alias_hash.each do | real_name, value |
  puts "=================="
  puts "Name: #{real_name}"
  puts "Alias: #{value}"
end
puts '-----------------------------'
