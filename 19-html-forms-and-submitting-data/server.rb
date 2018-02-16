require './film.rb'
require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

get '/films/:id' do
  @film = Film.find(params[:id])
  erb :show
end

get '/films' do
  "GET request: #{params}"
end

post '/films' do
  # Creates a film
  safe_params = {
    title: params[:title],
    description: params[:description],
    rating: params[:rating],
    available: params[:available],
    country: params[:country]
  }
  Film.create(safe_params)

  redirect to ('/')
end

put '/films' do
  "PUT request: #{params}"
end

delete '/films' do
  "DELETE request: #{params}"
end

# Types of requests
# GET - reading something
# POST - creating something
# PUT/PATCH - updating something
# DELETE - deleting something
