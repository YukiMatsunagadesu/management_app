class CreateHolidayworks < ActiveRecord::Migration[7.0]
  def change
    create_table :holidayworks do |t|
      t.date :date
      t.datetime :start_time
      t.datetime :end_time
      t.string :reason

      t.timestamps
    end
  end
end
