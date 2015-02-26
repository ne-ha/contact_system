require 'rails_helper'

describe "sigin process", :type=> :feature  do
  before :each do
    User.create(:email => 'users@example.com', :password => 'secretpassword')
  end

  it "sigin in " do
    visit "/users/sign_in"
    within("#new_user") do
      fill_in  'Email', :with => 'users@example.com'
      fill_in  'Password', :with => 'secretpassword'
    end
    click_button "Log in"
    expect(page).to have_content "Signed in successfully."
  end
  
end