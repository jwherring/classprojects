class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :user_id
      t.integer :project_id
      t.text :comment
      t.integer :rating

      t.timestamps
    end
  end
end
