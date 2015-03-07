class AddAttachmentTutorialToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :tutorial
    end
  end

  def self.down
    remove_attachment :projects, :tutorial
  end
end
