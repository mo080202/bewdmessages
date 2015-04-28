module SessionHelper
  def login(user)
    session[:user_id] = user.id
    session[:email] = user.email
  end
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def message_author(message)
    if message.user_id == current_user.try(:id)
      'You'
    else
      message.user.email
    end
  end
  def message_author?(message)
    message.user_id == current_user.try(:id)
  end

end
