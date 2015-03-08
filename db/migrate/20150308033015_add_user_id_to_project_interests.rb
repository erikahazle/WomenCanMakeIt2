class AddUserIdToProjectInterests < ActiveRecord::Migration
  def change
    add_reference :project_interests, :user, index: true
    add_foreign_key :project_interests, :users
  end
end
