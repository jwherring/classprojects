class User < ActiveRecord::Base
  has_many :project_participants, dependent: :destroy
  has_many :user_roles, dependent: :destroy
  has_many :evaulations, dependent: :destroy
  accepts_nested_attributes_for :roles
end
