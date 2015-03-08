class AddTeamIdToMemberships < ActiveRecord::Migration
  def change
    add_reference :memberships, :team, index: true
    add_foreign_key :memberships, :teams
  end
end
