class WorkoutExercisesController < ApplicationController

  def index
    # binding.pry
    @workout_exercises = WorkoutExercise.all.select { |workout_exercises| workout_exercises.workout_id == params[:workout_id].to_i}
    # binding.pry
  end

  # def show
  #   @workout_exercise = WorkoutExercise.find(params[:id])
  # end

  def edit

  end

  def update
    # binding.pry
    @workout_exercise = WorkoutExercise.find(params[:id])
    # binding.pry
    if @workout_exercise.update(weight: params[:weight], sets: params[:sets], reps: params[:reps], rest_time: params[:rest_time])
      # binding.pry
      redirect_to user_workout_workout_exercises_path(@user, params[:workout_id])
    else
      render :index
    end
  end

end
