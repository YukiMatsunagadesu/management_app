class AddScheduledWorkDayToAttendances < ActiveRecord::Migration[7.0]
  def change
    add_column :attendances, :scheduled_work_day, :date
  end
end
