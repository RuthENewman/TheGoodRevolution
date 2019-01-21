class SocialActionsController < ApplicationController

def index
  @social_actions = SocialAction.all
end

def show
  @social_actions = SocialAction.find(params[:id])
end



end
