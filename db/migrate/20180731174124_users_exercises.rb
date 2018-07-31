class UsersExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :user_exercise do |t|
      t.integer :user_id
      t.integer :exercise_id
    end
  end
end
