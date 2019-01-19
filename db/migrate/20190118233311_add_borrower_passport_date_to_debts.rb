class AddBorrowerPassportDateToDebts < ActiveRecord::Migration[5.2]
  def change
    add_column :debts, :borrower_passport_date, :string
  end
end
