class CreateBalls < ActiveRecord::Migration[5.1]
  def change
    create_table :balls do |t|
      t.integer :scene_id
      t.integer :x
      t.integer :y
      t.timestamps
    end
  end
end
