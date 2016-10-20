# LOGIC
class Santa

  attr_reader :ethnicity
  attr_accessor :age, :gender

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

end

# DRIVER CODE

# santa_1 = Santa.new
# santa_1.speak
# santa_1.eat_milk_and_cookies("KitKat")


# santa_1 = Santa.new("agender", "black")

# santa_1.celebrate_birthday
# santa_1.get_mad_at('Dasher')
# santa_1.gender = 'male'
# p santa_1.gender
# p santa_1.age
# p santa_1.ethnicity

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
1000.times do
  santa_instance = Santa.new(example_genders.sample, example_ethnicities.sample)
  santa_instance.age = rand(140)
  puts "Age: #{santa_instance.age}"
  puts "Ethnicity: #{santa_instance.ethnicity}"
  puts "Gender: #{santa_instance.gender}"
end