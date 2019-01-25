class SessionsController < ApplicationController

  def new
    # @session = Session.new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to welcome_path, notice: "Logged in!"
    else
      flash[:errors] = ["Invalid username or password"]
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
