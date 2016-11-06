require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("calendar.db")

create_dates_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS dates(
      id INTEGER PRIMARY KEY,
      day INT,
      month INT,
      year INT
      )
SQL

db.execute(create_dates_cmd)