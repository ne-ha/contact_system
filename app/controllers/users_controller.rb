class UsersController < ApplicationController

  has_many :contacts
  
  def index
    @contacts = Contact.all
  end
end
