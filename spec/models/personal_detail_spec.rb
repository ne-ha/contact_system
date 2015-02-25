require 'rails_helper'

RSpec.describe PersonalDetail, type: :model do
  it "should have valid email address" do
    contact = Contact.create(first_name: 'Anil', last_name: 'Shrestha')
    personal = contact.create_personal_detail( 
      address: 'Kalanki' , 
      email: 'test@example.com', 
      website:'www.aske.com')
    expect(personal).to be_valid
  end

  it "invalid email " do
    contact = Contact.create(first_name: 'Neal', last_name: 'Maharjan')
    personal = contact.create_personal_detail( 
      address: 'Teku' , 
      email: 'esterexample.com', 
      website:'www.esss.com')
    expect(personal).to be_invalid
  end

  it " two contacts can have same address" do
    contact = Contact.create(first_name: 'Nitish', last_name: 'Shakya')
    contact.create_personal_detail( 
      address: 'Kuleshwore' , 
      email: 'ester@example.com', 
      website:'www.ss.com')
    Contact.new(first_name: 'Kinara', last_name: 'Maharjan')
    personal = contact.create_personal_detail( 
      address: 'Tinkune' , 
      email: 'es@work.com', 
      website:'www.esss.com')
    expect(personal).to be_valid
  end

end
