class SessionsController < ApplicationController
  before_action :user_not_authenticated?, only: [:create, :new]
  before_action :user_authenticated?, only: [:destroy]


  def new
  end

  def create
    @user = User.find_by email: params[:email]
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      return redirect_to root_path
    end
    redirect_to login_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
