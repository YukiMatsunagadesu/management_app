class CreateRests < ActiveRecord::Migration[7.0]
  def change
    create_table :rests do |t|
      t.date :start_date
      t.date :end_date
      t.string :reason

      t.timestamps
    end
  end
end
