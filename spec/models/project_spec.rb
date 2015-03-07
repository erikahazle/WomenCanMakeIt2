require 'rails_helper'

RSpec.describe Project, type: :model do
  before(:each) do
    @project = Project.new(name: 'Code a blog')
  end

  it 'has a name' do
    expect(@project.name).to eq('Code a blog')
  end

  it 'has a tutorial attachment' do
    expect(@project.tutorial.path).to eq(nil)
    File.open('./spec/fixtures/code_a_blog.txt') do |f|
      @project.tutorial = f
      @project.save
    end
    expect(@project.tutorial.path).not_to eq(nil)
  end

  it 'can take a markdown file' do
    expect(@project.tutorial.path).to eq(nil)
    File.open('./spec/fixtures/test.md') do |f|
      @project.tutorial = f
      @project.save
    end
    expect(@project.tutorial.path).not_to eq(nil)
  end
end