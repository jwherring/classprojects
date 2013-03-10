class Role < ActiveRecord::Base
  has_many :user_roles
  has_many :users, through: :user_roles
  before_destroy :ensure_not_referenced_by_any_user
end

private

def ensure_not_referenced_by_any_user
  if user_roles.empty?
    return True
  else
    errors.add(:base, "Role has users")
  end
end

