# PLAN
# GOAL: guessing game in which a guesses must result in revealing the word before the limit is reached

# CLASS - create a WordGame class

# On initialization:
  # print "Welcome to the word game...Initializing"
  # initialize the secret_word = the word to be guessed
  # initialize the secret_letters = array of letters in the word
  # initialize the guess_count = 0
  # initialize the guess_limit = length of word times 2
  # initialize the win = false
  # initialize the word_guessed = '_ ' multiplied by the length of the word
  # initialize guesses = an array of guesses that were guessed before

  # allow read access to the word_guessed
  # allow access to read and change the secret_word, win

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
    # replace the '_' in the word_guessed with the letter of that position
    # add the string to the guesses array
  # otherwise,
    # add the string to the guesses array
  # return word_guessed

# create a method to determine ending message
  # if win is true
    # 'Congratulations! You won!!!'
  # otherwise,
    # 'You have reached the limit of guesses, you lost :( :('

# PLAN - DRIVER CODE

# let game = an instance of the WordGame class
# print 'First player: Please type in the secret word(make sure nobody is looking)'
# feed input to .new method
# print 'Ok ready to go!'

# until guess limit has been reached or win is true
  # print the word_guessed
  # print 'You have x guesses remaining, guess a letter or word'
  # feed user input to the guess increment method
  # feed user input to the matching method(line 33)
  # if the word_guessed is equal to secret_word
    # set win to true

# print ending message
# -------------------------------------------------------------------------------------


# LOGIC

class WordGame
  attr_reader :word_guessed
  attr_accessor :secret_word , :win, :guess_count, :guesses

  def initialize(secret_word)
    puts "Welcome to the word game...Initializing"
    @secret_word = secret_word
    @secret_letters = @secret_word.chars
    @guess_count = 0
    @guess_limit = @secret_word.length * 2
    @win = false
    @word_guessed = '_ ' * @secret_word.length
    @guesses = []
  end

  def match(guess)
    if guess == @secret_word
      @word_guessed = @secret_word
    elsif @secret_letters.count(guess) == 1
      letter_index = @secret_letters.index(guess)
      @guesses << guess
      if letter_index != 0
        @word_guessed[letter_index * 2] = guess
      else
        @word_guessed[letter_index] = guess
      end
    elsif @secret_letters.count(guess) > 1
      mult_letters(guess)
    else
      @guesses << guess
    end
    return @word_guessed
  end

  def mult_letters(guess)
    @guesses << guess
    letter_index = 0
    @secret_letters.each do |secret_letter|
      if secret_letter == guess
        if letter_index != 0
        @word_guessed[letter_index * 2] = guess
        else
        @word_guessed[letter_index] = guess
        end
      end
      letter_index += 1
    end
  end

  def increment_count?(guess)
    if @guesses.include?(guess)
      puts 'You already guessed that!'
      return false
    else
      @guess_count += 1
      return true
    end
  end

  def guesses_remaining
    @guess_limit - @guess_count
  end

  def limit_reached
    if @guess_count >= @guess_limit
      return true
    else
      return false
    end
  end

  def ending_message
    if @win
      'Congratulations! You won!!!'
    else
      'You have reached the limit of guesses, you lost :( :('
    end
  end

end

# DRIVER CODE

puts 'First player: Please type in the secret word(make sure nobody is looking)'
game = WordGame.new(gets.chomp)
puts "=======================" * 1000
puts 'Ok ready to go!'

until game.limit_reached || game.win
  puts game.word_guessed
  guesses_remaining = game.guesses_remaining
  puts "You have #{guesses_remaining} guesses remaining, guess a letter or word"
  guess = gets.chomp
  game.increment_count?(guess)
  game.match(guess)
  if game.word_guessed == game.secret_word
    game.win = true
  end
  puts "==============================="
end

puts game.ending_message
