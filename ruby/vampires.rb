puts "what is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
age = age.to_i
puts "what year were you born?"
dob = gets.chomp
dob = dob.to_i
dob_age = 2016 - dob
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
wants_garlic = gets.chomp
case wants_garlic
  when "y"
    wants_garlic = true
  when "n"
    wants_garlic = false
  end

puts "would you like to enroll in the company's health insurance? (y/n)"
wants_health_insurance = gets.chomp
case wants_health_insurance
  when "y"
    wants_health_insurance = true
  when "n"
    wants_health_insurance = false
  end

result = "Results inconclusive."
  if (dob_age == age) && (wants_garlic || wants_health_insurance)
    result = "Probably not a vampire."
  end
  if (dob_age != age) && (wants_garlic == false || wants_health_insurance == false)
    result = "Probably a vampire."
  end
  if (dob_age != age) && (wants_garlic == false && wants_health_insurance == false)
    result = "Almost certainly a vampire."
  end
  if name == "Drake Cula" || name == "Tu Fang"
    result = "Definitely a vampire."
  end
print result
