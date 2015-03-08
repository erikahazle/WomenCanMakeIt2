class ChangeUserTypeToInteger < ActiveRecord::Migration
  def up
    change_column :users, :type, 'integer USING CAST(type AS integer)'
  end

  def down
    change_column :users, :type, :string
  end
end
