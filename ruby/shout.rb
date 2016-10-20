module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + '!!!' + ':)'
  end

end

# DRIVER CODE
puts Shout.yell_angrily('How dare you')
puts Shout.yelling_happily('Happy Birthday')