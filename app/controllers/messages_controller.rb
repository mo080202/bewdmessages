class MessagesController < ApplicationController
  def index
    # @messages = Message.find_by(user_id: session[:user_id])
    @messages = Message.all
  end
  # def show
  #   @message = Message.find(params[:id])
  # end
  def new
    @message = Message.new
  end
  def create
    message = Message.create(new_message_params)
    redirect_to messages_path
  end
  def edit
    @message = Message.find(params[:id])
  end
  def update
    message = Message.find(params[:id])
    message.update(message_params)
    redirect_to messages_path
  end
  def destroy
    message = Message.find(params[:id])
    message.destroy
    redirect_to messages_path
  end
  private
  def new_message_params
    message_params.merge(user: current_user)
  end
  def message_params
    params.require(:message).permit(:content)
  end
end
