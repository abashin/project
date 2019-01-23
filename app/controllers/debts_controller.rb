class DebtsController < ApplicationController
  def new
    @debt = Debt.new
  end

  def create
    @debt = Debt.create(name: params[:debt][:name], lastname: params[:debt][:lastname],  patronymic: params[:debt][:patronymic], passport_series: params[:debt][:passport_series], passport_number: params[:debt][:passport_number],  address: params[:debt][:address],  borrower_name: params[:debt][:borrower_name],  borrower_lastname: params[:debt][:borrower_lastname],  borrower_patronymic: params[:debt][:borrower_patronymic],   borrower_passport_series: params[:debt][:borrower_passport_series],  borrower_passport_number: params[:debt][:borrower_passport_number],  borrower_address: params[:debt][:borrower_address], debt_summ: params[:debt][:debt_summ],  date_return_debt: params[:debt][:date_return_debt],  passport_institution: params[:debt][:passport_institution], passport_date: params[:debt][:passport_date], borrower_passport_date: params[:debt][:borrower_passport_date], borrower_passport_institution: params[:debt][:borrower_passport_institution])

    if @debt.errors.any?
      flash[:notice] = 'Введите данные ещё раз'
      render 'new'
    else
      flash[:notice] = 'Расписка была создана'
      render 'new'    end
  end

  def all
    @debts = Debt.all
  end
end
