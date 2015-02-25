require 'rails_helper'

RSpec.describe Contact, type: :model do

  describe Contact do
    it "returns a contact's full name as a string" do
      contact = Contact.new(first_name: 'Anil', last_name: 'Shrestha')
      expect(contact.full_name).to eq 'Anil Shrestha'
    end

    it "is invalid without a firstname" do
      contact = Contact.new(first_name: nil)
      contact.valid?
      expect(contact).to be_invalid
    end

    it "can have two contacts with same first name" do
      Contact.create(
        first_name: 'Sam',
        last_name: 'Shrestha')
      contact = Contact.new(
        first_name: 'Sam',
        last_name: 'Tamang')
      expect(contact).to be_valid
    end

    it "can have two contacts with same last_name" do
      Contact.create(
        first_name: 'Asha',
        last_name: 'Shrestha')
      contact = Contact.new(
        first_name: 'Tina',
        last_name: 'Shrestha')
      expect(contact).to be_valid
    end

    it "can have two contacts with same name(full name)" do
      Contact.create(
        first_name: 'Sam',
        last_name: 'Shrestha')
      contact = Contact.new(
        first_name: 'Sam',
        last_name: 'Shrestha')
      expect(contact).to be_valid
    end
  end 

end
