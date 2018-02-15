require 'sinatra'
require_relative 'recipe'

get '/' do
  redirect to('/recipes')
end

get '/about' do
  @title = 'About Us'
  erb :about
end

get '/contact' do
  @title = 'Contact Us'
  erb :contact
end

get '/blog' do
  @title = 'Blog'
  erb :blog
end

get '/recipes' do
  @title = 'Recipes'

  # .all is only useful when there small numbe of items
  @recipes = Recipe.all

  erb :recipes
end

get '/recipes/:id' do

  @recipe = Recipe.find(params[:id])

  @title = @recipe.name
  erb :recipe
end
