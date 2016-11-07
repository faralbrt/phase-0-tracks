# process user input into commands.
# Available Commands:
# - create(creates event)
require_relative 'main'

# LOGIC
def command_processor(user_input)
  case user_input.downcase
  when "help"
    list_available_commands
  when "create"
    ui_create_event
  when "view-day"
    ui_view_by_day
  when "view-month"
    ui_view_by_month
  when "delete"
    ui_delete_event
  else
    puts "#{user_input} is not a command. type 'help' to see a list of commands"
  end
end

def list_available_commands
  puts "\nCommands: \n 'create' \n 'view-day' \n 'view-month'\n 'delete'"
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

def ui_view_by_day
  puts "Date(MM-DD-YYYY):"
  events_arr = view_by_day(date_converter(gets.chomp))
  puts "\n"
  if events_arr == []
    puts "No events for the day."
  else
    events_arr.each do |event|
      puts "ID: #{event[3]}"
      puts "Time: #{event[0].to_s.insert(-3, ':')}"
      puts "Title: #{event[1].capitalize}"
      puts "Description: #{event[2]}"
      puts "\n"
    end
  end
end

def ui_view_by_month
  puts "Month(MM):\n"
  dates_arr = view_by_month(gets.chomp.to_i)
  dates_arr.each do |date|
    puts date[0]
    if date[2]
      puts "ID: #{date[4]}"
      puts "Time: #{date[1].to_s.insert(-3, ':')}"
      puts "Title: #{date[2].capitalize}"
      puts "Description: #{date[3]}\n\n"
    else
      puts "No events for the day.\n\n"
    end
  end
end

def ui_delete_event
  puts "Enter the ID:"
  delete_event(gets.chomp.to_i)
  puts "The event has been deleted."
end
