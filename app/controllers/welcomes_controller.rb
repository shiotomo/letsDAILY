class WelcomesController < ApplicationController
  def index
    redirect_to dashboards_path if user_signed_in?
  end
end
