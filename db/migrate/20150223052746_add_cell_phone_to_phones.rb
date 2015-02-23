class AddCellPhoneToPhones < ActiveRecord::Migration

  def change
    add_column :phones, :cell_phone, :text
  end

end
