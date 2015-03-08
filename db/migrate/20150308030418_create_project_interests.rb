class CreateProjectInterests < ActiveRecord::Migration
  def change
    create_table :project_interests do |t|

      t.timestamps null: false
    end
  end
end
