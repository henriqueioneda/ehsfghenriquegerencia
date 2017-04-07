class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_cookie

  protected

  def get_cookie
      @signed_in = !!cookies[:login];
  end

  def ensure_login
      if !cookies[:login] && !(params[:controller] == "visitors" && params[:action] == "index")
        redirect_to :root
      end
  end
end
