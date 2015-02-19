class OfficeContactsController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @office = current_user.office_contacts
    redirect_to(root_path)
  end

  def create
  end

  def new
  end

  def show
  end

  def edit
  end
  
end
