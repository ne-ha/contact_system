class SessionsController < Devise::SessionsController

  skip_before_filter :normal_user

end