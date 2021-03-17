class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :project_type
      t.string :location
      t.string :start_date
      t.string :duration
      t.integer :user_id

      t.timestamps
    end
  end
end
