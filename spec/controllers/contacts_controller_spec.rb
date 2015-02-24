require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  describe "GET #delete" do
    it "returns http success" do
      get :delete
      expect(response).to have_http_status(:success)
    end
  end

end
