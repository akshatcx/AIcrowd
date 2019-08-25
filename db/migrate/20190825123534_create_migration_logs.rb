class CreateMigrationLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :migration_logs do |t|
      t.integer :crowdai_participant_id
      t.integer :aicrowd_participant_id

      t.timestamps
    end
  end
end
