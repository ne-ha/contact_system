class RemoveOfficeDetailIdFromPhones < ActiveRecord::Migration
  
  def change
    remove_column :phones, :office_detail_id, :integer
  end

end
