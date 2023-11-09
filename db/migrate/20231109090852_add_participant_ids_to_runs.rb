class AddParticipantIdsToRuns < ActiveRecord::Migration[7.0]
  def up
    add_column :runs, :participant_ids, :integer, array: true
  end

  def down
    remove_column :runs, :participant_ids
  end
end
