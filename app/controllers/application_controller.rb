class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  before_action do
    @current_user = User.find_by id: session[:user_id]
  end
end
