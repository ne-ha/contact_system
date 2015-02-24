class UsersController < ApplicationController

  before_action :authenticate_user!
    
  def index
    @contacts = Kaminari.paginate_array(current_user.contacts).page(params[:page]).per(10)
  end  
  
end
