class RemoveCellPhoneFromPhones < ActiveRecord::Migration

  def change
    remove_column :phones, :cell_phone, :string
  end

end
