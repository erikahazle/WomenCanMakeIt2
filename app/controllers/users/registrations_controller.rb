class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super
    if User.all.count == 3
      Team.create(project_id: Project.first.id, users: User.all)
    end
  end
end