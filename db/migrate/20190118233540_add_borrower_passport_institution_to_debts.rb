class AddBorrowerPassportInstitutionToDebts < ActiveRecord::Migration[5.2]
  def change
    add_column :debts, :borrower_passport_institution_, :string
  end
end
