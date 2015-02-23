class RemovePhoneIdFromPersonalDetails < ActiveRecord::Migration

  def change
    remove_column :personal_details, :phone_id, :integer
  end

end
