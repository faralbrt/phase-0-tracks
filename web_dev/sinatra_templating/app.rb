# require gems
require 'sinatra'
require 'sqlite3'
require 'sinatra/reloader'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/students/delete' do
  erb :delete_student
end

post '/students/delete' do
  student_id = params['student_id']
  db.execute("DELETE FROM students WHERE id=?", [student_id])
  redirect '/students/delete'
end
# add static resources