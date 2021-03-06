class UsersController < ApplicationController


  def new_user
    @user = User.new
  end

  def personal_area
    @debts = Debt.where(borrower_name: current_user['name']) + Debt.where(name: current_user['name'])
    @tables = Table.where(creator_email: current_user['email'])

  end

  def exit
    session[:user] = nil
    redirect_to root_path
    flash[:notice] = 'Вы успешно вышли'
  end

  def create
    @user = User.create(email: params[:user][:email], password: params[:user][:password], name: params[:user][:name], lastname: params[:user][:lastname], patronymic: params[:user][:patronymic], passport_series: params[:user][:passport_series], passport_number: params[:user][:passport_number], passport_institution: params[:user][:passport_institution], passport_date: params[:user][:passport_date], address: params[:user][:address], right_id: params[:user][:right_id] )
    if @user.errors.any?
      flash[:error] = 'Введите данный ещё раз'
      render 'new'
    else
      u = User.find_by_email(params[:user][:email])
      flash[:notice] = 'Пользователь был создан'
      login_user(u)
      redirect_to "/personal_area"
    end
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:notice] = 'Пользователь успешно удалён'
    render 'new'
  end

  def signin

  end

  def login
    u = User.find_by_email(params[:user][:email])
    if u && u.password == params[:user][:password]
      flash[:notice] = 'Вы успешно авторизовались'
      login_user(u)
      redirect_to root_path
    else
      flash[:error] = "Email или пароль неправильный!"
      redirect_to signin_path
    end

    def check_login
      redirect_to signin_path unless logged_in?
    end
  end

  def update
    @user = User.update(params[:id], email: params[:user][:email], password: params[:user][:password], name: params[:user][:name], lastname: params[:user][:lastname], patronymic: params[:user][:patronymic], passport_series: params[:user][:passport_series], passport_number: params[:user][:passport_number], passport_institution: params[:user][:passport_institution], passport_date: params[:user][:passport_date], address: params[:user][:address], right_id: params[:user][:right_id] )
    if @user.errors.any?
      render 'edit'
    else
      login_user(@user)
      render 'new'
    end
  end

end
