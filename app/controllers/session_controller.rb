class SessionController < ApplicationController
  def show
    @users = User.all
  end
  def create
    user = User.find_by(email: params[:email])
    if user
      login user
      redirect_to channel_path(id: user.id)
    else
      render 'show'
      flash[:alert]="You must enter a registered email address."
    end
  end
end
