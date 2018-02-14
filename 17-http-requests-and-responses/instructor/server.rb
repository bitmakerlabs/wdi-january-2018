require 'sinatra'

# PATH - The 'local' part of the URL
# ROUTE - HTTP Verb (GET, POST, PATCH, DELETE) + Path

get '/' do
  redirect to('/hello')
end

get '/hello' do
  @title = 'Hello from @title'
  @current_time = Time.now

  @todo_list = [
    'Water the plants',
    'Feed the cat',
    'Call the girlfriend',
    'Eat the lunch'
  ]

  # Must be the last line
  #send_file('views/hello.erb')

  erb(:hello)
end

get '/goodbye' do
  'Goodbye'
end
