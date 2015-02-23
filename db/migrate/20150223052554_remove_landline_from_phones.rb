class RemoveLandlineFromPhones < ActiveRecord::Migration

  def change
    remove_column :phones, :landline, :string
  end

end
