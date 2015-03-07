class Project < ActiveRecord::Base
  has_many :teams

  has_attached_file :tutorial
  validates_attachment_content_type :tutorial, :content_type => "text/plain"
end
