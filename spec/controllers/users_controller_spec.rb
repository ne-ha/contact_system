require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  before :each do
    User.create(:email => 'user@example.com' , :password => 'password')
  end

  # describe "#index" do
  #   it "should be success" do
  #     get :index
  #     expect(response).to be_success
  #   end
  # end
  it "signs me in" do
    visit "/users/sign_in"
    within("#users") do
      fill_in 'Email' , :with => 'user@example.com'
      fill_in 'Password' , :with => 'password'
    end
    click_button 'Log in'
    expect(page).to have_content 'Success'
  end

end
