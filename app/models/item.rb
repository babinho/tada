class Item < ActiveRecord::Base
  attr_accessible :done, :priority, :title
  validates :user_id, presence: true
  def complete!
    self.done = true
  end
  def completed?
    self.done
  end
end
