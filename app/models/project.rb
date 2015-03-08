class Project < ActiveRecord::Base
  has_many :teams

  has_many :project_interests
  has_many :users, through: :project_interests

  has_attached_file :tutorial
  validates_attachment_content_type :tutorial, :content_type => "text/plain"
end
