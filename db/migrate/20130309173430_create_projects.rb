class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :abstract
      t.integer :course_id

      t.timestamps
    end
  end
end
