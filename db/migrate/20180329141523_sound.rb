class Sound < ActiveRecord::Migration[5.1]
  def change
    create_table :sounds do |t|
      t.integer :ball_id
      t.float :note
      t.string :wave_type
      t.float :delay_time
      t.float :release_time
      t.timestamps
    end
  end
end
