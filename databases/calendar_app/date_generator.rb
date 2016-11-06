# This file generates all dates for the year of 2017
# and stores it into the database.
require_relative 'main'

dates_of_year = []
year = 2017
months = [1,2,3,4,5,6,7,8,9,10,11,12]
days = [31,28,31,30,31,30,31,31,30,31,30,31]

months.each do |month|
  day = 1
  days[month - 1].times do
    create_date(month, day, year)
    # full = month.to_s + " - " + day.to_s + " - " + year.to_s
    # dates_of_year << full
    day += 1
  end
end
