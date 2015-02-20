class ContactsController < ApplicationController

  before_action :authenticate_user! 

  def index
    @contacts = current_user.contacts
  end

  def show
    @contact = current_user.contacts.find(params[:id])
  end

  def create
    @contact = current_user.contacts.create(contact_param)
    @personal_detail = @contact.personal_details.create(personal_param)
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
      params.require(:contact).permit(:first_name, :last_name)
    end

    def personal_param
      params.require(:personal_detail).permit(:address, :email, :website)
    end

    def office_param
      params.require(:personal_detail).permit(:office_name,:office_address, :office_email, :office_website)
    end

end
