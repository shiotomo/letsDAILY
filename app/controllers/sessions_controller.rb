class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.create_with_omniauth(auth) || User.find_by_provider_and_uid(auth["provider"], auth["uid"])
    session[:user_id] = user.id
    User.update_with_omniauth(user, auth)
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
