require 'rails_helper'

RSpec.describe PersonalDetail, type: :model do
  it "should have valid email address" do
    personal_detail = PersonalDetail.new(
        email: 'test@example.com')
      expect(personal_detail).to be_valid
  end

  it "is invalid with a duplicate email" do
    PersonalDetail.create(
      email: 'test@example.com')
    personal_detail = PersonalDetail.new(email: 'test@example.com')
    personal_detail.valid?
    expect(personal_detail).to be_invalid
  end
end
