class PersonalContactsController < ApplicationController

  before_action :authenticate_user!

  def index
    @personal = current_user.personal_contacts
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
