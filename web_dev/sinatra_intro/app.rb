# require gems
require 'sinatra'
require 'sqlite3'
require 'sinatra/reloader'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  str_to_search = "%" + params[:search_name] + "%"
  if str_to_search
    students = db.execute("SELECT * FROM students WHERE name LIKE ?", [str_to_search])
      response = ""
    students.each do |student|
      response << "ID: #{student['id']}<br>"
      response << "Name: #{student['name']}<br>"
      response << "Age: #{student['age']}<br>"
      response << "Campus: #{student['campus']}<br><br>"
    end
    response
  end
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# contact route that displays an address.

get '/contact' do
  "48 Wall St New York, 10005"  
end

get '/great_job' do
  "Good Job #{params[:name]}!"
end

get '/add/:x/:y' do
  x = params[:x].to_i
  y = params[:y].to_i
  result = x + y
  "#{x} + #{y} = #{result}"
end