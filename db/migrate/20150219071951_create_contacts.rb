class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.integer :personal_detail_id
      t.integer :office_detail_id
      t.integer :user_id
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
