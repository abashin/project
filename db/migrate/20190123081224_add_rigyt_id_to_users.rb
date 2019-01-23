class AddRigytIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :right, foreign_key: true
  end
end
