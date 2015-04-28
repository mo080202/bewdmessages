class ChannelsController < ApplicationController
  def show
    @user = User.find(params[:id])
    @channels = @user.channels
  end
end
