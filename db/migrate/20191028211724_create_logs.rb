class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :date
      t.string :time
      t.string :location
      t.string :wind_direction
      t.string :wind_speed
      t.string :moon_phase
      t.string :tide_phase
      t.string :catch_species
      t.integer :catch_length
      t.integer :catch_weight
      t.text :comment
      t.integer :user_id
      t.timestamps
    end
  end
end
