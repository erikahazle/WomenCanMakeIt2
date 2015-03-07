require 'rails_helper'

RSpec.describe Team, type: :model do
  before(:each) do
    @project = Project.create(name: 'Code a blog')
    @user_one = User.create(first_name: "Ethel", email: "ethel@gmail.com", password: "password", password_confirmation: "password")
    @user_two = User.create(first_name: "Erika", email: "erika@hotmail.com", password: "password", password_confirmation: "password")
    @team = Team.new
    @team.project_id = @project.id
    @team.users << @user_one
    @team.users << @user_two
    @team.save
  end

  it 'has a project' do
    expect(@team.project).not_to eq(nil)
  end

  it 'has users' do
    # binding.pry
    expect(@team.users).to include(@user_one)
    expect(@team.users).to include(@user_two)
  end
end
