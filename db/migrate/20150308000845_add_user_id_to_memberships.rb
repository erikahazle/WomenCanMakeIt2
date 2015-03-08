class AddUserIdToMemberships < ActiveRecord::Migration
  def change
    add_reference :memberships, :user, index: true
    add_foreign_key :memberships, :users
  end
end
