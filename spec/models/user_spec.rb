require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @project = Project.create(name: 'Code a blog')
    @user_one = User.create(first_name: "Ethel", email: "ethel@gmail.com", password: "password", password_confirmation: "password")
    @user_two = User.create(first_name: "Erika", email: "erika@hotmail.com", password: "password", password_confirmation: "password")
    @team = Team.create(project_id: @project.id, users: [@user_one, @user_two])
  end

  it 'knows the teams it belongs to' do
    expect(@user_one.teams).to include(@team)
  end

  it 'knows its current team' do
    expect(@user_one.current_team).to eq(@team)
  end

  it 'knows its current team after a previous project is completed' do
    Membership.all.each(&:expire)
    team_two = Team.create(project_id: @project.id, users: [@user_one, @user_two])
    expect(@user_two.current_team).to eq(team_two)
  end
end