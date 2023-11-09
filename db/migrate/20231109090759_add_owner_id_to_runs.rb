class AddOwnerIdToRuns < ActiveRecord::Migration[7.0]
  def up
    add_column :runs, :owner_id, :integer
    add_foreign_key :runs, :users, column: :owner_id
  end

  def down
    remove_column :runs, :owner_id
  end
end
