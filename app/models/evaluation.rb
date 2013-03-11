class Evaluation < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  validates_length_of :comment, :maximum => 300
end
