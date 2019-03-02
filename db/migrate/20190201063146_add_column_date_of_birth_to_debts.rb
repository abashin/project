class AddColumnDateOfBirthToDebts < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :date_of_birth, :string
    add_column :users, :borrower_date_of_birth, :string
  end
end
