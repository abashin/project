class AddPassportDateToDebts < ActiveRecord::Migration[5.2]
  def change
    add_column :debts, :passport_date, :string
  end
end
