class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :team

  def expire
    self.update(active: false)
  end
end
