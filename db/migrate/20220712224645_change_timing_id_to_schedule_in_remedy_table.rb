class ChangeTimingIdToScheduleInRemedyTable < ActiveRecord::Migration[7.0]
  def change
    add_column :remedies, :schedule_id, :integer
    remove_column :remedies, :timing_id
  end
end
