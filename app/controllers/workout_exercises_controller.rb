class WorkoutExercisesController < ApplicationController

  def index
    @workout_exercises = WorkoutExercise.all
  end

  def show
    @workout_exercise = WorkoutExercise.find(params[:id])
  end

end
