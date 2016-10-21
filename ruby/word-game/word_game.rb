# PLAN
# GOAL: guessing game in which a guesses must result in revealing the word before the limit is reached

# CLASS - create a WordGame class

# On initialization:
  # print "Welcome to the word game...Initializing"
  # allow read access to the word_guessed
  # allow access to read and change the secret_word
  # initialize the secret_word = the word to be guessed
  # initialize the secret_letters = array of letters in the word
  # initialize the guess_count = 0
  # initialize the guess_limit = length of word times 2
  # initialize the win = false
  # initialize the word_guessed = '-' multiplied by the length of the word
  # initialize guesses = an array of guesses that were guessed before

# create a method which determines if limit of guesses has been reached
  # if guess_count is greater than guess_limit
    # return true
  # Otherwise,
    # return false

# create a method to conditionally increment guess count(takes a string)
  # if the string matches one of the guesses
    # print 'You already guessed that!'
  # Otherwise
    # increment the guess_count by one

# create a method for guesses remaining
  # subtract guess_limit - guess_count
  
# create a method that determines if there is a match (takes in string)
  # if the string matches the secret_word
    # set word_guessed equal to the secret_word
  # if the string matches one of the secret_letters
    # replace the '-' in the word_guessed with the letter of that position
    # add the string to the guesses array
  # otherwise,
    # add the string to the guesses array

  # call the guess_count_increment method

# create a method to determine ending message
  # if win is true
    # 'Congratulations! You won!!!'
  # otherwise,
    # 'You have reached the limit of guesses, you lost :( :('

# PLAN - DRIVER CODE

# let game = an instance of the WordGame class
# print 'First player: Please type in the secret word(make sure nobody is looking)'
# set the input equal to the secret_word
# print 'Ok ready to go!'

# until guess limit has been reached or win is true
  # print the word_guessed
  # print 'You have x guesses remaining, guess a letter or word'
  # feed user input to the matching method(line 33)

# print ending message


