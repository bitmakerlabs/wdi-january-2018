class ContactsController < ApplicationController
  # Here we have two methods
  # Method in a controller can also be called an action

  def index
    # Talk to the relevant model
    @contacts = Contact.all
    # Talk to the relevant view
    render :index
  end

  def show
    # Talk to a model, make it fetch some data or create / edit / delete some data
    # Save the result in an instance variable
    @contact = Contact.find(params[:id])
    # Render a view, which will get that instance variable and use it to generate dynamic HTML
    render :show
  end
end
