class AddPreviousTwoColumsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :debts, :date_of_birth, :string
    add_column :debts, :borrower_date_of_birth, :string
  end
end
