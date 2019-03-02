class AddColumnCreatorEmailToTables < ActiveRecord::Migration[5.2]
  def change
    add_column :tables, :creator_email, :string
  end
end
