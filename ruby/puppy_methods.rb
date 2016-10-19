# LOGIC
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	puts "Woof!" * number
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	p human_years/7
  end

  def play_dead
  	puts "*plays dead*"
  end

  def initialize
  	puts "Initializing new puppy instance..."
  end

end

# DRIVER CODE
puppy1 = Puppy.new
p puppy1
puppy1.fetch('ball')
puppy1.speak(4)
puppy1.roll_over
puppy1.dog_years(35)
puppy1.play_dead