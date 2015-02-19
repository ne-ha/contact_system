class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :personal_detail_id
      t.integer :office_detail_id
      t.string :cell_phone
      t.string :landline

      t.timestamps null: false
    end
  end
end
