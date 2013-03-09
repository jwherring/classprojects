class User < ActiveRecord::Base
  has_many :project_participants, dependent: :destroy
end
