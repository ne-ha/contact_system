class RemovePersonalDetailIdFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :personal_detail_id, :integer
  end
end
