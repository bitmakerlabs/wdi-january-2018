require 'sinatra'
require './contact.rb'

get '/contacts' do
  @contacts = Contact.all
  erb :index
end

get '/contacts/:id' do
  @contact = Contact.find(params[:id])
  erb :show
end
