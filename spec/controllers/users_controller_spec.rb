require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  # UsersController.skip_before_filter :authenticate_user!
  
  before :all do
    User.destroy_all
    @user = User.create(email: 'test@example.com', password: 'secretpassword')
    contact = @user.contacts.create(first_name: 'Anil', last_name: 'Shakya')
  end

  describe '#index' do
    context "when user signs in" do
      it "should render index template" do
        sign_in :user, @user
        get :index 
        expect(response).to render_template("users/index")
      end
    end

    context "when user is not signed in" do
      it "should not render index template" do
        get :index
        expect(response).to redirect_to("/users/sign_in")
      end
    end
  end
end
