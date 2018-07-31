class Workout < ApplicationRecord
  belongs_to :user
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises


  def generate_random_workout(equipment, muscle, intensity, number)
    arr = []
    n = muscle.count
    n.times do |i|
      if equipment == true

        Exercise.all.select {|exercise| exercise.muscle_group == muscle}.sample(number)
      else
        Exercise.all.select {|exercise| exercise.muscle_group == muscle && exercise.equipment == false}.sample(number)
      end
    end
  end

  def muscles=(attr)
    @muscles = attr
  end

  def muscles
    @muscles
  end
end
