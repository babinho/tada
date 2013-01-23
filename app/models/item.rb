class Item < ActiveRecord::Base
  acts_as_list
  attr_accessible :title, :position
  validates :user_id, presence: true
  def complete!
    self.done = true
  end
  def completed?
    self.done
  end
end
