class CreateDebtors < ActiveRecord::Migration[5.2]
  def change
    create_table :debtors do |t|
      t.string :name
      t.string :lastname
      t.string :patronymic
      t.string :passport_series
      t.string :passport_number
      t.string :address
      t.string :borrower_name
      t.string :borrower_lastname
      t.string :borrower_patronymic
      t.string :borrower_passport_series
      t.string :borrower_passport_number
      t.string :borrower_address
      t.string :debt_summ
      t.string :date_return_debt

      t.timestamps
    end
  end
end
