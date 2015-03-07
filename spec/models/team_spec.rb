require 'rails_helper'

RSpec.describe Team, type: :model do
  before(:each) do
    @project = Project.create(name: 'Code a blog')
    @user_one = User.create(first_name: "Ethel", email: "ethel@gmail.com", password: "password", password_confirmation: "password")
    @user_two = User.create(first_name: "Erika", email: "erika@hotmail.com", password: "password", password_confirmation: "password")
    @team = Team.create(project_id: @project.id, users: [@user_one, @user_two])
  end

  it 'has a project' do
    expect(@team.project).to eq(@project)
  end

  it 'has users' do
    expect(@team.users).to include(@user_one)
    expect(@team.users).to include(@user_two)
  end
end
