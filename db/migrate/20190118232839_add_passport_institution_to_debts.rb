class AddPassportInstitutionToDebts < ActiveRecord::Migration[5.2]
  def change
    add_column :debts, :passport_institution, :string
  end
end
