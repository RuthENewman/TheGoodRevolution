class SessionsController < ApplicationController

  def new
    # @session = Session.new
  end

  def create
    donor = Donor.find_by(email: params[:email])
    if donor && donor.authenticate(params[:password])
      session[:donor_id] = donor.id
      redirect_to charities_path
    else
      flash[:errors] = ["Invalid username or password"]
      redirect_to login_path
    end
  end

  def destroy
    session[:donor_id] = nil
    redirect_to login_path
  end

end
