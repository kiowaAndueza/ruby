class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :user_authenticated?
  helper_method :user_not_authenticated?
  helper_method :is_admin?
  helper_method :is_me?

  def current_user
    User.find session[:user_id] if session[:user_id]
  end

  def user_authenticated?
    !current_user.nil?
  end

  def user_not_authenticated?
    current_user.nil?
  end

  def is_admin?
    user_authenticated? ? current_user.admin : true
  end

  def is_me?
    if user_authenticated? ? current_user.admin : false
      if current_user.id == @user.id
        redirect_to edit_user_path(@user.id)
      end
    end
  end
end