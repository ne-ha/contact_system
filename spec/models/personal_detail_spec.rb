require 'rails_helper'

RSpec.describe PersonalDetail, type: :model do
  it "should have valid email address" do
    personal_detail = PersonalDetail.new(
        email: 'test@example.com')
      expect(personal_detail).to be_valid
  end

  
end
