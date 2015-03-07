class AddCommToUsers < ActiveRecord::Migration
  def change
    add_column :users, :comm_pref, :string
  end
end
