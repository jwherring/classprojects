class User < ActiveRecord::Base
  has_many :project_participants, dependent: :destroy
  has_many :roles, dependent: :destroy
  has_many :evaulations, dependent: :destroy
end
