require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe User do
    it "is valid with email and password" do
      user = User.new(
        email: 'test@example.com',
        password: 'secretpassword')
      expect(user).to be_valid
    end

    it "is invalid without an email" do
      user = User.new(email: nil)
      user.valid?
      expect(user).to be_invalid
    end
  end

end
