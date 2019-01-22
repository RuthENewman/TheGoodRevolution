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
      redirect_to @donor
    else
      render 'new'
    end
  end

  def donor_params
     params.require(:donor).permit(:name, :email, :address, :phonenumber)
  end

end
