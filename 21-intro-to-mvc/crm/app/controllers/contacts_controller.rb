class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render :index
  end

  def show
    @contact = Contact.find(params[:id])
    render :show
  end
end
