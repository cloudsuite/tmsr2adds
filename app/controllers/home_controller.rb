class HomeController < ApplicationController
  def index
    # render :stream => true # can only use with unicorn web server, not webrick; problems there also 
  end

end
