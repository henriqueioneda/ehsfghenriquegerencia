class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_cookie
  before_action :start_counter
  after_action :stop_counter

  protected

  def start_counter
     @start_time = Time.now
  end

  def stop_counter
    if @signed_in
        c = Charge.get
        c.cpu += (Time.now - @start_time).in_milliseconds.to_i
        c.save
    end
  end

  def get_cookie
      @signed_in = !!cookies[:login];
  end

  def ensure_login
      if !cookies[:login] && !(params[:controller] == "visitors" && params[:action] == "index")
        redirect_to :root
      end
  end
end
