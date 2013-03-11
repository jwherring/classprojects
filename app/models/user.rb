class User < ActiveRecord::Base
  has_many :project_participants, dependent: :destroy
  has_many :projects, through: :project_participants
  has_many :user_roles, dependent: :destroy
  has_many :roles, :through => :user_roles
  has_many :evaulations, dependent: :destroy
  accepts_nested_attributes_for :user_roles, :allow_destroy => true
  validates_uniqueness_of :email
  has_secure_password

  def isadmin?
    my_roles = self.roles.map{ |rl| rl.role }
    my_roles.include?(:administrator)
  end

end
