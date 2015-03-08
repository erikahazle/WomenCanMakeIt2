class DropProjectInterests < ActiveRecord::Migration
  def change
    drop_table :project_interests
  end
end
