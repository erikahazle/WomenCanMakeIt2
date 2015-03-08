class SetDefaultValueForActive < ActiveRecord::Migration
  def change
    change_column :memberships, :active, :boolean, default: true
  end
end
