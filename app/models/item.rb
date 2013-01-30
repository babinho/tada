class Item < ActiveRecord::Base
  acts_as_list
  attr_accessible :title, :position
  validates :user_id, presence: true
  validates :title, presence: true
  after_create :move_to_top
  def complete!
    self.done = true
  end
  def completed?
    self.done
  end
end
