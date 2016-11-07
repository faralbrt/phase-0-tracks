require 'sqlite3'
require 'faker'

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

# DRIVER CODE
$db.execute(create_dates_cmd)
$db.execute(create_events_cmd)

# puts "Welcome to evento!, the app that allows you to store events onto a calendar"
# puts "Please type in a command, or 'help' to see a list of commands:"
# enter the method to process user input(maybe add in a loop)
