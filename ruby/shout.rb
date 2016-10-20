# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + '!!!' + ':)'
#   end

# end

# # DRIVER CODE
# puts Shout.yell_angrily('How dare you')
# puts Shout.yelling_happily('Happy Birthday')

module Shout

  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happily(words)
    puts words + '!!!' + ':)'
  end

end

class Male
  include Shout
end

class Female
  include Shout
end


# DRIVER CODE
male = Male.new
male.yell_angrily("Come on")

female = Female.new
female.yelling_happily("Come on")