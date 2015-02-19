class CreatePersonalContacts < ActiveRecord::Migration
  
  def change
    create_table :personal_contacts do |t|
      t.integer :user_id
      t.integer :phone_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.string :website
      t.timestamps null: false
    end
  end

end
