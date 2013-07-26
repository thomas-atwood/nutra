class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  
  before_filter :set_last_page
  def set_last_page
    if !request.xhr? && !request.url.match(/users\/sign_in/) && !request.url.match(/users\/sign_out/)
      session[:return_to] = request.url
    end 
  end 
  def after_sign_in_path_for(resource_or_scope)
    session[:return_to] || root_url
  end 
  def after_sign_out_path_for(resource_or_scope)
    session[:return_to] || root_url
  end

end
