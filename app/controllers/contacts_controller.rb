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
    if @contact.save
      flash[:success] = "Contacts created successfully."
    else
      flash[:notice] = "Contacts cannot be created."
    end
    redirect_to(root_path)
  end

  def delete
    @contact = current_user.contacts.find(params[:contact_id])
  end

  def destroy
    if current_user.contacts.find(params[:id]).destroy
      flash[:success] = "Contact deleted successfully"
    else
      flash[:notice] = "Contact cannot be deleted."
    end
    redirect_to root_path(:id => @contact_id)
  end

  def edit
    @contact = current_user.contacts.find(params[:id])
    @personal_detail =@contact.personal_detail
    @personal_phone = @personal_detail.phones
  end

  def update
    @contact = current_user.contacts.find(params[:id])
    @personal_detail = @contact.personal_detail
    @office_detail = @contact.office_detail
    if @contact.update_attributes(basic_param) && @personal_detail.update_attributes(contact_param[:personal_detail]) && @office_detail.update_attributes(contact_param[:office_detail]) 
      flash[:notice] = "Details updated successfully."
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  
    def contact_param
      params.require(:contact).permit(contact_details:[:first_name, :last_name], 
        personal_detail: [:address, :email, :website], personal_phone:[:cell_phone, :landline],
        office_detail:[:office_name,:office_address, :office_email, :office_website], office_phone:[:cell_phone, :landline])
    end

    def basic_param
      params.require(:contact).permit(:first_name, :last_name)
    end
end
