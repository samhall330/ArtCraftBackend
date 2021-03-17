class CreateSoftwares < ActiveRecord::Migration[6.1]
  def change
    create_table :softwares do |t|
      t.string :soft_name
      t.string :soft_link
      t.integer :user_id

      t.timestamps
    end
  end
end
