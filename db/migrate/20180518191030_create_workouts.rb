class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :body_part
      t.string :workout_name
      t.string :description
      t.integer :time
      t.boolean :alphabetical_order

      t.timestamps null: false
    end
  end
end
