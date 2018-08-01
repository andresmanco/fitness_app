class Workout < ApplicationRecord
  belongs_to :user
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises
  attr_accessor :muscles

  def generate_random_workout(equipment, muscle, intensity= 0, number= 8)
    # binding.pry

    if number.to_i % muscle.length == 0
      arr = []
      n = number.to_i/muscle.length
      muscle.count.times do |i|
        # binding.pry
        if equipment == "1"
          arr << Exercise.all.select {|exercise| exercise.muscle_group == muscle[i].downcase}.sample(n)
          binding.pry
        else
          arr << Exercise.all.select {|exercise| exercise.muscle_group == muscle[i].downcase && exercise.equipment == false}.sample(n)
          binding.pry
        end
      end
      arr.flatten
    end

  end
end
