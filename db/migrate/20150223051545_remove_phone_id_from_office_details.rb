class RemovePhoneIdFromOfficeDetails < ActiveRecord::Migration

  def change
    remove_column :office_details, :phone_id, :integer
  end

end
