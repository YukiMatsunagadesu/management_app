class AddAuthorityToMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :authority, :boolean
  end
end
