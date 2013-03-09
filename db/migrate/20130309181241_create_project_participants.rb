class CreateProjectParticipants < ActiveRecord::Migration
  def change
    create_table :project_participants do |t|
      t.references :project, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
