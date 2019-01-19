class UsersController < ApplicationController
  def new_user
    @user = User.new
  end

  def create
    @user = User.create(email: params[:user][:email], password: params[:user][:password])
    if @user.errors.any?
      flash[:notice] = 'Введите данный ещё раз'
      render 'new'
    else
      flash[:notice] = 'Пользователь был создан'
      redirect_to users_path
    end
  end

  def index
    @users = User.all
  end

  def signin

  end

  def login
    u = User.find_by_email(params[:user][:email])
    if u && u.password == params[:user][:password]
      flash[:notice] = 'You were logged in successfully'
      login_user(u)
      redirect_to root_path
    else
      flash[:notice] = 'Password or user is incorrect'
      redirect_to signin_path
    end

    def check_login
      redirect_to signin_path unless logged_in?
    end
  end


end
