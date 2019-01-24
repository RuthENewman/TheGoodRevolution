class WelcomeController < ApplicationController

  def index
    render 'index'
  end

  def show
    render 'about' 
  end

end
