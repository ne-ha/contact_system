class RemoveOfficeDetailIdFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :office_detail_id, :integer
  end
end
