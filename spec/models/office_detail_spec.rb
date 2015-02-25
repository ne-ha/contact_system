require 'rails_helper'

RSpec.describe OfficeDetail, type: :model do
  it "should have valid email address" do
    contact = Contact.create(first_name: 'Anil', last_name: 'Shrestha')
    office = contact.create_office_detail( 
      office_name: 'Jyaasa',
      office_address: 'Kalanki' , 
      office_email: 'test@example.com', 
      office_website:'www.aske.com')
    expect(office).to be_valid
  end
end
