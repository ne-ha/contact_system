require 'rails_helper'

RSpec.describe Contact, type: :model do

  describe Contact do
    it "returns a contact's full name as a string" do
      contact = Contact.new(first_name: 'Anil', last_name: 'Shrestha')
      expect(contact.full_name).to eq 'Anil Shrestha'
    end
  end 

end
