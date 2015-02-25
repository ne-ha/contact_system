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

  it " two contacts can have same address" do
    contact =   Contact.create(first_name: 'Nitish', last_name: 'Shakya')
    contact.create_office_detail( 
      office_name: 'Technologies',
      office_address: 'Kuleshwore' , 
      office_email: 'ster@example.com', 
      office_website:'www.ss.com')
    Contact.new(first_name: 'Kinara', last_name: 'Maharjan')
    office = contact.create_office_detail( 
      office_name: 'Pioneer',
      office_address: 'Tinkune' , 
      office_email: 'es@work.com', 
      office_website:'www.ss.com')
    expect(office).to be_valid
  end
end
