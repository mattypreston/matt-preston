class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  def index
    #Add code here to get skills and resume details

  end
end
