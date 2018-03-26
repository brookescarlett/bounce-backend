class CreateBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :blocks do |t|
      t.integer :scene_id
      t.integer :x1
      t.integer :y1
      t.integer :x2
      t.integer :y2
      t.timestamps
    end
  end
end
