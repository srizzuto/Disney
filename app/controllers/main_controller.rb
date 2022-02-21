class MainController < ApplicationController

  def index
    if session[:id].nil?
      redirect_to signup_path
    end
  end

end