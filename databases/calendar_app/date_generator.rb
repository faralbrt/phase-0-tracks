# This file generates all dates for the year of 2017
# and stores it into the database.

require_relative 'main'

def convert_format(integer)
  if integer.to_s.length < 2
    integer_s = "0" + integer.to_s
  else
    integer_s = integer.to_s
  end
  return integer_s
end


dates_of_year = []
year = 2017
months = [1,2,3,4,5,6,7,8,9,10,11,12]
days = [31,28,31,30,31,30,31,31,30,31,30,31]

months.each do |month|
  day = 1
  days[month - 1].times do
    full = convert_format(month) + "-" + convert_format(day) + "-" + year.to_s
    create_date(month, day, year, full)
    # dates_of_year << full
    day += 1
  end
end
