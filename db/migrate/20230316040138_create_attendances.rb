class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.date :work_date
      t.datetime :start_time
      t.datetime :rest_start_time
      t.datetime :rest_end_time
      t.datetime :end_time
      t.datetime :scheduled_work_start_time
      t.datetime :scheduled_work_end_time

      t.timestamps
    end
  end
end
