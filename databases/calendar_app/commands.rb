# process user input into commands.
# Available Commands:
# - create(creates event)

# LOGIC
def command_processor(user_input)
  case user_input.downcase
  when "create"
    ui_create_event
  else
    puts "#{user_input} is not a command. type 'help' to see a list of commands"
  end
end

def ui_create_event
  puts "Title:"
  title = gets.chomp
  puts "Description:"
  description = gets.chomp
  puts "Date(MM-DD-YYYY):"
  date_id = date_converter(gets.chomp)
  puts "Time:(HH:MM)"
  time = time_converter(gets.chomp)
  
end

def date_converter(date_string)
  date_id = nil
  if date_id
    return date_id
  else
    puts "error in the date format"
    return nil
  end
end

def time_converter(time_string)
  time_int = nil
  if time_int
    return time_int
  else
    puts 'error in the time format'
    return nil
  end
end