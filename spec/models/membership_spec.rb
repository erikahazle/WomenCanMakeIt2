require 'rails_helper'

RSpec.describe Membership, type: :model do
  before(:each) do
    @team = Team.create
    @user_one = User.create(first_name: "Ethel", email: "ethel@gmail.com", password: "password", password_confirmation: "password")
    @membership = Membership.create(user_id: @user_one.id, team_id: @team.id)
  end

  it 'is active by default' do
    expect(@membership.active).to eq(true)
  end

  it 'can be expired' do
    @membership.expire
    expect(@membership.active).to eq(false)
  end
end
