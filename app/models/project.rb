class Project < ActiveRecord::Base
  has_many :teams

  has_and_belongs_to_many :interested_users, foreign_key: 'project_id', class_name: 'User'

  has_attached_file :tutorial
  validates_attachment_content_type :tutorial, :content_type => "text/plain"
end
