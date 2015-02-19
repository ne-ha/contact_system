class CreateOfficeDetails < ActiveRecord::Migration
  def change
    create_table :office_details do |t|

      t.timestamps null: false
    end
  end
end
