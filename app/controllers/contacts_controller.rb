class ContactsController < ApplicationController

  before_action :authenticate_user! 

  def index
    @contacts = current_user.contacts
  end

  def show
    @contact = current_user.contacts.find(params[:id])
  end

  def new
    @contact = current_user.contacts.new
  end

  def create
    @contact = current_user.contacts.create(contact_param)
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js
    end
  end

  def edit
  end

  private
  
    def contact_param
      params.require(:contact).permit(:first_name, :last_name)
    end

end
