puts "What is your name?"
hamsterName = gets.chomp

puts "What's your required volume level?"
hamsterVolumeLevel = gets.chomp
hamsterVolumeLevel = hamsterVolumeLevel.to_i

puts "What's your fur color?"
furColor = gets.chomp

puts "Is your hamster a good candidate for adoption? (y/n)"
hamsterCandidate = gets.chomp

def to_boolean(string1)
  if string1 == "y"
    string1 = true
  elsif string1 == "n"
    string1 = false
  else
    string1 = "invalid answer"
  end
end

hamsterCandidate = to_boolean(hamsterCandidate)

puts "Guess your Hamster's age"
hamsterAge = gets.chomp

if hamsterAge == ""
  hamsterAge = nil
else 
  hamsterAge = hamsterAge
end
hamsterAge = hamsterAge.to_i

puts "your hamster's name is #{hamsterName}"
puts "your hamster requires a volume level of #{hamsterVolumeLevel}"
puts "your hamster is colored #{furColor}"
puts "Candidacy: #{hamsterCandidate}"
puts "Your hamster might be #{hamsterAge}"