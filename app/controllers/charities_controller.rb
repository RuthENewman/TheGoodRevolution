class CharitiesController < ApplicationController
  before_action :set_charity, only: [:show, :edit, :update, :destroy]

  def index
    @charities = Charity.all
  end

  def show
  end

  def new
    @charity = Charity.new
  end

  def create
    @charity = Charity.new(charity_params)
    if @charity.valid?
      @charity.save
      redirect_to @charity
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @charity.update(charity_params)
    if @charity.valid?
      redirect_to @charity
    else
      redirect_to edit_charity_path
    end
  end

  def destroy
    @artist.destroy
    redirect_to charities_path
  end

  private

  def set_charity
    @charity = Charity.find(params[:id])
  end

  def charity_params
    params.require(:charity).permit(:name, :category, :bio, :website, :img_url)
  end

end
