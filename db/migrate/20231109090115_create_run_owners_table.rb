class CreateRunOwnersTable < ActiveRecord::Migration[7.0]
  def up
    create_table :run_owners do |t|
      t.belongs_to :run
      t.belongs_to :user
    end
  end
  
  def down
    drop_table :run_owners
  end
end
