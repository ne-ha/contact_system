class PersonalDetailsController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @personal_details = current_user.contacts.personal_details
    redirect_to
  end

  def new
  end

  def create
  end

  def edit
  end
end
