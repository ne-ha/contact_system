class ContactsController < ApplicationController

  before_action :authenticate_user! 

  def index
    @contacts =current_user.contacts
  end

  def show
    @contact = current_user.contacts.where(:id=>params[:id]).first
  end

  def create
    @contact = current_user.contacts.create(contact_param[:contact_details])
    @personal_detail = @contact.create_personal_detail(contact_param[:personal_detail])
    @office_detail = @contact.create_office_detail(contact_param[:office_detail])
    @personal_phone = @personal_detail.phones.create(contact_param[:personal_phone])
    @office_phone = @office_detail.phones.create(contact_param[:office_phone])
    redirect_to(root_path)
  end

  def delete
    @contact = current_user.contacts.find(params[:contact_id])
  end

  def destroy
    @contact = current_user.contacts.find(params[:id]).destroy
    flash[:notice] = "Contact deleted successfully."
    redirect_to root_path(:id => @contact_id)
  end

  def edit
    @contact = current_user.contacts.find(params[:id])
    @personal_detail =@contact.personal_detail
  end

  def update
    @contact = current_user.contacts.find(params[:id])
    @personal_detail = @contact.personal_detail
    @office_detail = @contact.office_detail
    if @contact.update_attributes(contact_param[:contact_details]) && @personal_detail.update_attributes(contact_param[:personal_detail]) && @office_detail.update_attributes(contact_param[:office_detail]) && @personal_detail.phones.update_attributes(contact_param[:personal_phone]) && @office_detail.phones.update_attributes(contact_param[:office_phone])
      flash[:notice] = "Details updated successfully."
      redirect_to contact_path(:id => @contact.id)
    end
    render('edit')
  end

  private
  
    def contact_param
      params.require(:contact).permit(contact_details: [:first_name, :last_name], 
        personal_detail: [:address, :email, :website], personal_phone:[:cell_phone, :landline],
        office_detail:[:office_name,:office_address, :office_email, :office_website], office_phone:[:cell_phone, :landline])
    end
end
