class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_out_path_for(resource)
    # By default, devise will send the user to /users/sign_in.
    # By specifying /sign_in here, we can avoid one redirect.
    sign_in_path
  end
end
