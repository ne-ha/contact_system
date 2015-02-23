class RemovePersonalDetailIdFromPhones < ActiveRecord::Migration

  def change
    remove_column :phones, :personal_detail_id, :integer
  end
  
end
