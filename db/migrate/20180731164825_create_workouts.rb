class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.float :weight
      t.integer :sets
      t.integer :reps
      t.time :rest_time
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
