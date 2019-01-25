class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # byebug
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to welcome_path, notice: "Thank you for joining The Good Revolution!"
    else
      redirect_to join_path
    end
  end

  private

  def user_params
     params.require(:user).permit(:name, :email, :address, :phonenumber, :password, :password_confirmation)
  end

end
