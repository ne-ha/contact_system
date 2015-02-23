class AddPersonalDetailIdToPhones < ActiveRecord::Migration

  def change
    add_column :phones, :personal_detail_id, :integer
  end

end
