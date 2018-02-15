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
    3 => 'Gluten-free Cookies',
    4 => 'Fruit salad'
  }

  erb :recipes
end

get '/recipes/:id' do
  @name = params[:id]
  erb :recipe
end
