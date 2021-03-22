class CreateSpecialties < ActiveRecord::Migration[6.1]
  def change
    create_table :specialties do |t|
      t.string :name
      t.string :pro_level
      t.integer :user_id

      t.timestamps
    end
  end
end
