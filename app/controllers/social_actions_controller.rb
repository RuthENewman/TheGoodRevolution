class SocialActionsController < ApplicationController
  before_action :set_social_action, only: [:show]


  def index
    @social_actions = SocialAction.all
  end

  def show
  end

  private

  def set_social_action
    @social_action = SocialAction.find(params[:id])
  end

end
