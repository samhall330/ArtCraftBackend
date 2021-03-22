class CreateEquipment < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :equip_link
      t.integer :user_id

      t.timestamps
    end
  end
end
