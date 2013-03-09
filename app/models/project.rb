class Project < ActiveRecord::Base
  has_many :project_participants 
  belongs_to :course
  before_destroy :ensure_not_referenced_by_any_project_participant

  private

  def ensure_not_referenced_by_any_project_participant
    if project_participants.empty?
      return true
    else
      errors.add(:base, "Project has participants")
    end
  end

end
