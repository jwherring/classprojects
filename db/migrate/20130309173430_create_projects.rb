class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :abstract
      t.string :website
      t.integer :class_id

      t.timestamps
    end
  end
end
