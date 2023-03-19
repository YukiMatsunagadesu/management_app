class RenameTypeColumnInMembers < ActiveRecord::Migration[7.0]
  def change
    rename_column :members, :type, :member_type
  end
end
