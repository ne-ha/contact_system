class ContactsController < ApplicationController

  before_action :authenticate_user! 

  def index
    @contacts = current_user.contacts
  end

  def show
    @contact = current_user.contacts.find(params[:id])
  end

  def create
    @contact = current_user.contacts.create(contact_param[:contact_details])
    @personal_detail = @contact.create_personal_detail(contact_param[:personal_detail])
    @office_detail = @contact.create_office_detail(contact_param[:office_detail])
    redirect_to(root_path)
  end

  def destroy
    @contact = current_user.contacts.find(params[:id]).destroy
    redirect_to(root_path, :user_id => @user_id)
  end

  def edit
    @contact = current_user.contacts.find(params[:id])
  end

  def update
    @contact = current_user.contacts.find(params[:id])
    if @contact.update_attributes(contact_param)
      redirect_to(:action => 'show' , :id => @contact.id, :user_id => @user_id)
    end
    render('edit')
  end

  private
  
    def contact_param
      params.require(:contact).permit(contact_details: [:first_name, :last_name], 
        personal_detail: [:address, :email, :website], 
        office_detail:[:office_name,:office_address, :office_email, :office_website])
    end
end
