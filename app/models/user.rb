class User < ActiveRecord::Base
  # enum type: [:mentee, :mentor]

  has_many :memberships
  has_many :teams, through: :memberships

  has_and_belongs_to_many :interested_projects, foreign_key: 'user_id', class_name: 'Project'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :profile_picture, :styles => { :medium => "300x300#", :thumb => "100x100#" }, :default_url => "/images/:style/missingprofilepicture.png"
  validates_attachment_content_type :profile_picture, :content_type => /\Aimage\/.*\Z/

  self.inheritance_column = nil

  def current_team
    self.memberships.any?(&:active) ? self.memberships.find(&:active).team : nil
  end

  def projects
    self.teams.map(&:project)
  end

  def current_project
    current_team.project
  end

  def current_mentor
    current_team.users.find { |user| type == 1 }
  end

  def current_co_student
    current_team.users.find { |user| type == 0 }
  end
end
