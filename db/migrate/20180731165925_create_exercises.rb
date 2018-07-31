class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle_group
      t.string :muscle_part
      t.boolean :equipment
      t.boolean :high_intensity

      t.timestamps
    end
  end
end
