class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
  end

  def about
  end

  def features
  end

  def build_a_blog
    project = Project.where(name: "Build a blog").first
    lines = IO.readlines(project.tutorial.path)
    @title = lines.shift
    @content = lines
  end

  def build_ecommerce_site
  end

  def contact
  end

  def dashboard
    @interested_project = current_user.interested_projects.first
    interested_project_lines = IO.readlines(@interested_project.tutorial.path)
    @interested_project_title = interested_project_lines.shift
    @interested_project_content = interested_project_lines
  end
end
