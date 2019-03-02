class RemoveDatesFeomUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :date_of_birth
    remove_column :users, :borrower_date_of_birth
  end
end
