class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :patronymic
      t.string :passport_series
      t.string :passport_number
      t.string :address
      t.string :passport_institution
      t.string :passport_date

      t.timestamps
    end
  end
end
