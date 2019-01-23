class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new_user
    @user = User.new
  end

  def personal_area
  end

  def exit
    session[:user] = nil
    redirect_to root_path
    flash[:notice] = 'Вы успешно вышли'
  end

  def create
    @user = User.create(email: params[:user][:email], password: params[:user][:password], name: params[:user][:name], lastname: params[:user][:lastname], patronymic: params[:user][:patronymic], passport_series: params[:user][:passport_series], passport_number: params[:user][:passport_number], passport_institution: params[:user][:passport_institution], passport_date: params[:user][:passport_date], address: params[:user][:address], right_id: params[:user][:right_id] )
    if @user.errors.any?
      flash[:notice] = 'Введите данный ещё раз'
      render 'new'
    else
      flash[:notice] = 'Пользователь был создан'
      redirect_to index_path
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
