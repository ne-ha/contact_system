class UsersController < ApplicationController
    
  def index
    @contacts = Contact.all
  end
  
end
