class AddOfficeDetailIdToPhones < ActiveRecord::Migration

  def change
    add_column :phones, :office_detail_id, :integer
  end

end
