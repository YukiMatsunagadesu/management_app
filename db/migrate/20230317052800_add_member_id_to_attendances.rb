class AddMemberIdToAttendances < ActiveRecord::Migration[7.0]
  def change
    add_reference :attendances, :member, null: false, foreign_key: true
  end
end
