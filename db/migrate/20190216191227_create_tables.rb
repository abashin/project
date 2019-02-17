class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.string :debt_summ
      t.string :issue_day
      t.string :issue_month
      t.string :issue_year
      t.string :return_day
      t.string :return_month
      t.string :return_year
      t.string :month_percent
      t.string :fine_percent
      t.string :fine_summ

      t.timestamps
    end
  end
end
