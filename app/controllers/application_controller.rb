class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :back
    flash.now[:alert] = 'You do not have access to this page.'
  end
end
