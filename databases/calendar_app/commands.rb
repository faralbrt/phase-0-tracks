# process user input into commands.
# Available Commands:
# - create(creates event)
require_relative 'main'
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
  create_event(title, description, time, date_id)
end

def date_converter(date_string)
  date_arr = $db.execute('SELECT id, full_date FROM dates WHERE full_date= ?', [date_string])[0]
  if date_arr
    return date_arr[0]
  else
    puts "error in the date format"
    return nil
  end
end

def time_converter(time_string)
  time_int = time_string.delete!(":").to_i
  return time_int
end
