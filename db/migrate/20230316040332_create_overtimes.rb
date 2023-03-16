class CreateOvertimes < ActiveRecord::Migration[7.0]
  def change
    create_table :overtimes do |t|
      t.string :reason
      t.datetime :start_time
      t.datetime :end_time
      t.date :date

      t.timestamps
    end
  end
end
