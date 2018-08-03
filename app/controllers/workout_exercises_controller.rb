class WorkoutsController < ApplicationController

  def index
    @workout_exercises = WorkoutExercises.all
  end

  def show
    @workout_exercise = WorkoutExercises.find(params[:id])
  end

end
