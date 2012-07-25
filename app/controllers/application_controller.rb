class ApplicationController < ActionController::Base
  protect_from_forgery
  #before_filter :log_ram
  # this function puts a string in log/
  def log_ram 
     logger.warn 'RAM USAGE: ' + 'vmmap #{Process.pid} | tail -1'[10,40].strip
  end
end
