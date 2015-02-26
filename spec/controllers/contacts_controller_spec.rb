require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  ContactsController.skip_before_filter :authenticate_user!

  

end
