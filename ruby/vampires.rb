puts "How many employees would you like to interview?"
number_of_employees = gets.chomp
number_of_employees = number_of_employees.to_i
number_of_loops = 0
result = "Results inconclusive."

until number_of_loops == number_of_employees
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
  puts "Please list any allergies. One at a time. Type 'done' when finished."
  allergy = nil
    until allergy == "done"
      allergy = gets.chomp
      if allergy == "sunshine"
        result = "Probably a vampire."
        break
      end
    end
  if result != "Probably a vampire." 
    if (dob_age == age) && (wants_garlic || wants_health_insurance)
      result = "Probably not a vampire."
  end
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
  p result
  number_of_loops +=1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."