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

    it "is invalid without a password" do
      user = User.new(password: nil)
      user.valid?
      expect(user).to be_invalid
    end

    it "is invalid with a duplicate email" do
      User.create(
        email: 'test@example.com')
      user = User.new(email: 'test@example.com')
      user.valid?
      expect(user).to be_invalid
    end
  end

end
