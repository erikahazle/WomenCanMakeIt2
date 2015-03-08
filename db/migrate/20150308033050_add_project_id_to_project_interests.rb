class AddProjectIdToProjectInterests < ActiveRecord::Migration
  def change
    add_reference :project_interests, :project, index: true
    add_foreign_key :project_interests, :projects
  end
end
