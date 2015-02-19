class ContactsController < ApplicationController

  before_action :authenticate_user! 
  
  def index
    @contacts = current_user.contacts
    redirect_to("users/index")
  end

  def new
  end

  def create
  end

  def edit
  end
end
