module ApplicationHelper
  def login_user(user)
    session[:user] = user
  end

  def logged_in?
    !session[:user].nil?
  end

  def current_user
    session[:user]
  end

  def check_admin
    if logged_in? && current_user['right_id'] == 1
      check_admin = true
    else
      check_admin = false
    end
  end
end
