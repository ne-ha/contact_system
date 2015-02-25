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

  
end
