class CreateOfficeDetails < ActiveRecord::Migration
  def change
    create_table :office_details do |t|
      t.integer :contact_id
      t.integer :phone_id
      t.string :office_name
      t.string :office_address
      t.string :office_email
      t.string :office_website

      t.timestamps null: false
    end
  end
end
