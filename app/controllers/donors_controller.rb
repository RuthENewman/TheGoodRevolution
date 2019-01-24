class DonorsController < ApplicationController

  def show
    @donor = Donor.find(params[:id])
  end

  def new
    @donor = Donor.new
  end

  def create
    @donor = Donor.new(donor_params)
    if @donor.valid?
      @donor.save
      session[:donor_id] = @donor.id
      redirect_to charities_path
    else
      redirect_to join_path
    end
  end

  def donor_params
     params.require(:donor).permit(:name, :email, :address, :phonenumber, :password)
  end

end
