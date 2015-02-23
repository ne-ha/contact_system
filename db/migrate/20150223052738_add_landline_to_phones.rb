class AddLandlineToPhones < ActiveRecord::Migration

  def change
    add_column :phones, :landline, :text
  end

end
