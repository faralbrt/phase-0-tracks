require 'sqlite3'
require 'faker'

# LOGIC
$db = SQLite3::Database.new("calendar.db")

create_dates_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS dates(
      id INTEGER PRIMARY KEY,
      day INT,
      month INT,
      year INT
      )
SQL

create_events_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS events(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    description VARCHAR(255),
    time INT,
    date_id INT,
    FOREIGN KEY (date_id) REFERENCES dates(id)
    )
SQL

def create_date(month, day, year)
  $db.execute("INSERT INTO dates (day, month, year) VALUES (?, ?, ?)", [day, month, year])
end

def create_event(title, description, time, date_id)
  $db.execute("INSERT INTO events (title, description, time, date_id) VALUES (?,?,?,?)", [title, description, time, date_id])
end

# DRIVER CODE
# db.execute(create_dates_cmd)
# db.execute(create_events_cmd)