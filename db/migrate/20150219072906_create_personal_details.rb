class CreatePersonalDetails < ActiveRecord::Migration
  def change
    create_table :personal_details do |t|

      t.timestamps null: false
    end
  end
end
