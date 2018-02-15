require 'sinatra'

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

  @recipes = {
    1 => 'BBQ Ribs',
    2 => 'Avocado Sushi',
    3 => 'Gluten-free Cookies'
  }

  erb :recipes
end

get '/recipes/1' do
  erb :recipe_1
end

get '/recipes/2' do
  erb :recipe_2
end

get '/recipes/3' do
  erb :recipe_3
end
