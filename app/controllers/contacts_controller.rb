class ContactsController < ApplicationController

  before_action :authenticate_user! 

  belongs_to :user
  
  def index
    @contacts = current_user.contacts
    redirect_to(root_path)
  end

  def new
  end

  def create
  end

  def edit
  end

end
