require 'sqlite3'
require 'faker'
require_relative 'commands'

# LOGIC
$db = SQLite3::Database.new("calendar.db")

create_dates_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS dates(
      id INTEGER PRIMARY KEY,
      day INT,
      month INT,
      year INT,
      full_date VARCHAR(255)
      )
SQL

create_events_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS events(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    description VARCHAR(255),
    time VARCHAR(255),
    date_id INT,
    FOREIGN KEY (date_id) REFERENCES dates(id)
    )
SQL

def create_date(month, day, year, full_date)
  $db.execute("INSERT INTO dates (day, month, year, full_date) VALUES (?, ?, ?, ?)", [day, month, year, full_date])
end

def create_event(title, description, time, date_id)
  $db.execute("INSERT INTO events (title, description, time, date_id) VALUES (?,?,?,?)", [title, description, time, date_id])
end

def view_by_day(date_id)
  $db.execute("SELECT time, title, description, id FROM events WHERE date_id= ?", [date_id])
end

def view_by_month(month)
  $db.execute("SELECT dates.full_date, events.time, events.title, events.description, events.id FROM dates LEFT JOIN events ON dates.id = events.date_id WHERE dates.month = ?", [month])
end

def delete_event(event_id)
  $db.execute("DELETE FROM events WHERE id = ?", [event_id])
end

def modify_event(event_id, edits_hash)
  edits_hash.each do |column, new_value|
    $db.execute("UPDATE events SET '#{column}'= '#{new_value}' WHERE id =?", [event_id])
  end
end
# DRIVER CODE
$db.execute(create_dates_cmd)
$db.execute(create_events_cmd)

puts "Welcome to evento!, the app that allows you to store events onto a calendar"
loop do
  puts "Please type in a command, or 'help' to see a list of commands:"
  command = gets.chomp
  break if command == 'exit'
  command_processor(command)
end
