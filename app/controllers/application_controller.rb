class ApplicationController < ActionController::Base
  helper_method :current_donor, :logged_in?

  def current_donor
    if session[:donor_id]
      Donor.find(session[:donor_id])
    else
      Donor.new
    end
  end

  def logged_in?
    !!current_donor.id
  end

  def authorized?
    if !logged_in?
      flash[:authorized] = "You are not logged in"
      redirect_to login_path and return
    end
  end

  def authorized_for(target_donor_id)
    if current_donor.id != target_donor_id.to_i && current_donor.admin != true
      flash[:authorized] = "You cannot view a page that does not belong to you!"
      redirect_to join_path
    end
  end

end
