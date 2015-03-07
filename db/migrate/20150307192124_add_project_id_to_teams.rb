class AddProjectIdToTeams < ActiveRecord::Migration
  def change
    add_reference :teams, :project, index: true
    add_foreign_key :teams, :projects
  end
end
