class TablesController < ApplicationController
  def new_table
    @table = Table.new
  end

  def create_table
    @table = Table.create(debt_summ: params[:table][:debt_summ], issue_day: params[:table][:issue_day],  issue_month: params[:table][:issue_month], issue_year: params[:table][:issue_year], return_day: params[:table][:return_day],  return_month: params[:table][:return_month],  return_year: params[:debt][:return_year],  month_percent: params[:debt][:month_percent],  fine_percent: params[:debt][:fine_percent],   fine_summ: params[:debt][:fine_summ])

    if @table.errors.any?
      flash[:notice] = 'Введите данные ещё раз'
      render 'new'
    else
      flash[:notice] = 'Расписка была создана'
      redirect_to '/personal_area'
    end
  end

  def show_table
    @table = Table.find(params[:id])
  end

  def all_tables
    @tables = Table.all
  end
end
