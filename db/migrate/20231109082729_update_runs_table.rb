class UpdateRunsTable < ActiveRecord::Migration[7.0]
  def up
    add_column :runs, :city, :string
    add_column :runs, :latitude, :decimal, { precision: 10, scale: 6 }
    add_column :runs, :longitude, :decimal, { precision: 10, scale: 6 }
    add_column :runs, :accepted_people_number, :integer
    add_column :runs, :distance, :decimal, { precision: 4, scale: 1 }
    add_column :runs, :difficulty, :integer
    add_column :runs, :date_time, :datetime
  end

  def down
    remove_column :runs, :city
    remove_column :runs, :latitude
    remove_column :runs, :longitude
    remove_column :runs, :accepted_people_number
    remove_column :runs, :distance
    remove_column :runs, :difficulty
    remove_column :runs, :date_time
  end
end
