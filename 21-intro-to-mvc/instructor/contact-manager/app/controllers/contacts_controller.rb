class ContactsController < ApplicationController
  def index
    # Talks to the relevant model
    @contacts = Contact.all
    # Talk to the relevant view
    # render :index
  end

  def show
    @contact = Contact.find(params[:id])
    # render :show
  end
end
