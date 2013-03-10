class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.reference :user
      t.reference :role

      t.timestamps
    end
  end
end
