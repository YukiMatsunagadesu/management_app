class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :mail
      t.string :phone
      t.string :password
      t.string :type

      t.timestamps
    end
  end
end
