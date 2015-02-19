class CreatePersonalDetails < ActiveRecord::Migration
  def change
    create_table :personal_details do |t|
      t.integer :contact_id
      t.integer :phone_id
      t.string :address
      t.string :email
      t.string :website

      t.timestamps null: false
    end
  end
end
