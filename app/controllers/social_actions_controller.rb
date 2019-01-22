class SocialActionsController < ApplicationController
  before_action :set_social_action, only: [:show, :edit, :destroy]


  def index
    @social_actions = SocialAction.all
  end

  def show
  end

  def new
    @social_action = SocialAction.new
  end

  def create
    @social_action = SocialAction.new(social_action_params)
    if @social_action.valid?
      @social_action.save
      redirect_to @social_action
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @social_action.update(social_action_params)
      if @social_action.valid?
        redirect_to @social_action
      else
        render 'new'
      end
    end

  def destroy
    @social_action.destroy
    redirect_to social_actions_path
  end

  private

  def set_social_action
    @social_action = SocialAction.find(params[:id])
  end

  def social_action_params
    params.require(:social_action).permit(:title, :charity_id, :summary, :img_url)
  end

end
