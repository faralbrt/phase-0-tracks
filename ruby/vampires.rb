puts "What is your name?"
Name = gets.chomp
puts "How old are you?"
Age = gets.chomp
Age = Age.to_i
puts "What year were you born?"
Dob = gets.chomp
Dob = Dob.to_i
Dob_age = 2016 - Dob
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
Wants_Garlic = gets.chomp
case Wants_Garlic
  when "y"
    Wants_Garlic = true
  when "n"
    Wants_Garlic = false
  end

puts "Would you like to enroll in the company's health insurance? (y/n)"
Wants_health_insurance = gets.chomp
case Wants_health_insurance
  when "y"
    Wants_health_insurance = true
  when "n"
    Wants_health_insurance = false
  end
Result = nil
if (Dob_age == Age) && (Wants_Garlic || Wants_health_insurance)
  Result = "Probably not a vampire."
elsif (Dob_age != Age) && (Wants_Garlic == false || Wants_health_insurance == false)
  Result = "Probably a vampire."
end
print Result
