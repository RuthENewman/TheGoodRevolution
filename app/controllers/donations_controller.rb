class DonationsController < ApplicationController

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.valid?
      @donation.save
      redirect_to event_path(@event)
    else
      redirect_to 'new'
    end
  end

    private

  def donation_params
    params.require(:donation).permit(:name, :donor_id, :event_id, :amount)
  end

end
