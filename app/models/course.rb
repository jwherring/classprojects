class Course < ActiveRecord::Base
  has_many :projects

  def full_title
    "#{self.section} - #{self.title}"
  end
end
