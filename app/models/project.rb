class Project < ActiveRecord::Base
  has_many :project_participants 
  has_many :users, through: :project_participants
  has_many :evaluations
  belongs_to :course
  before_destroy :ensure_not_referenced_by_any_project_participant
  before_destroy :ensure_not_referenced_by_any_evaluation

  def average_rating
    ((self.evaluations.map{|ev| ev.rating}.sum) * 1.0 / self.evaluations.count).round(2)
  end

  private

  def ensure_not_referenced_by_any_project_participant
    if project_participants.empty?
      return true
    else
      errors.add(:base, "Project has participants")
    end
  end

  def ensure_not_referenced_by_any_evaluation
    if evaluations.empty?
      return true
    else
      errors.add(:base, "Project has evaluations")
    end
  end

end
