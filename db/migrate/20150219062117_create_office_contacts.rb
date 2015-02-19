class CreateOfficeContacts < ActiveRecord::Migration
  def change
    create_table :office_contacts do |t|

      t.timestamps null: false
    end
  end
end
