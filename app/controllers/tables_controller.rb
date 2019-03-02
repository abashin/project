class TablesController < ApplicationController
  def new_table
    @table = Table.new
  end

  def show
    @table = Table.find(params[:id])
  end

  def destroy
    Table.find(params[:id]).destroy
    flash[:notice] = ' Таблица была успешно удалёна'
    redirect_to '/personal_area'
  end

  def edit
    @table = Table.find(params[:id])
  end

  def create
    @table = Table.create(creator_email: current_user['email'], debt_summ:  params[:table][:debt_summ], issue_day: params[:table][:issue_day],  issue_month: params[:table][:issue_month], issue_year: params[:table][:issue_year], return_day: params[:table][:return_day],  return_month: params[:table][:return_month],  return_year: params[:table][:return_year],  month_percent: params[:table][:month_percent],  fine_percent: params[:table][:fine_percent],   fine_summ: params[:table][:fine_summ] )

    if @table.errors.any?
      flash[:error] = 'Введите данные ещё раз'
      render 'new'
    else
      flash[:notice] = 'Таблица была создана'
      redirect_to '/personal_area'
    end
  end

  def show_table
    @table = Table.find(params[:id])
  end

  def my_tables

  end

  def all_tables
    @tables = Table.all
  end
end
