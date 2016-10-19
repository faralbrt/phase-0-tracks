# LOGIC
class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking << @reindeer_ranking.delete(reindeer)
    p @reindeer_ranking
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

end

# DRIVER CODE
# santa_1 = Santa.new
# santa_1.speak
# santa_1.eat_milk_and_cookies("KitKat")


santa_1 = Santa.new("agender", "black")
Santa.new("female", "Latino")
Santa.new("bigender", "white")
Santa.new("male", "Japanese")
Santa.new("female", "prefer not to say")
Santa.new("gender fluid", "Mystical Creature (unicorn)")
Santa.new("N/A", "N/A")

santa_1.celebrate_birthday
santa_1.get_mad_at('Dasher')
santa_1.gender = 'male'
p santa_1
p santa_1.age
p santa_1.ethnicity