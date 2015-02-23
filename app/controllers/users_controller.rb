class UsersController < ApplicationController

  before_action :authenticate_user!
    
  def index
    @contacts = current_user.contacts
    #@personal_details = current_user.personal_details
    #@office_details = current_user.office_details
  end  
  
end
