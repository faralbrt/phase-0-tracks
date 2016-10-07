# define a method
# takes input and iterates through each letter
# unless the character is a space
#   while at each letter it changes the letter to the next one

def encrypt(word)
  index = 0
  while index < word.length
    if word[index] != " "
      if word[index] == "z"
        word[index] = "a"
      else
      word[index] = word[index].next!
      end
    end
    index += 1
  end
  p word
end


# define a method called decrypt
# create an index of the alphabet by putting it into a string
# while index is less than the string length
#   if its not space
#     get the current index letter of the word
#     subtract the value of the current index letter by one and set it to the old value
# increase index by 1

def decrypt(word)
  index = 0
  alphabet= "abcdefghijklmnopqrstuvwxyz"
  while index < word.length
    if word[index] != " "
      letter_position = alphabet.index(word[index])
      word[index] = alphabet[letter_position - 1]
    end
    index += 1
  end
  p word
end

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")
# p decrypt(encrypt("swordfish"))

# The nested method call works because decrypt is accepting the result
# of the encryption, and undoes what the encryption did.
# Also, the nested call works because encrypt returns a string and decrypt
# accepts a string as an argument, whereas a float would not work.

# asks user if they want to encrypt or decrypt the word
# if decrypt
#   ask for password and decrypt
# if encrypt
#   ask for password and encrypt
#   print the result  

puts "Would you like to encrypt or decrypt?"
cryption_preference = gets.chomp
puts "What is the password?"
password = gets.chomp

if cryption_preference == "encrypt"
  encrypt(password)
elsif cryption_preference == "decrypt"
  decrypt(password)
else
  puts "I don't know what you want."
end

p password