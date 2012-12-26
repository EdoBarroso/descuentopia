class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end

  def after_sign_in_path_for(resource)
    (session[:user_return_to].nil?) ? "/" : session[:user_return_to].to_s
  end

end
