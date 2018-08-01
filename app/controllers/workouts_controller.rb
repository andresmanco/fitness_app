require 'pry'
class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def index
    @workouts = Workout.all
  end

  def show
  end

  def new
    @muscle_groups = ["Chest", "Back", "Shoulders", "Biceps", "Triceps", "Legs", "Abs", "Full-Body"]
    @workout = Workout.new
  end

  def create
    @muscle_groups = ["Chest", "Back", "Shoulders", "Biceps", "Triceps", "Legs", "Abs", "Full-Body"]
    @workout = Workout.new(date: Date.today, user_id: 1)
    arr = @workout.generate_random_workout(equipment= params[:equipment], muscle= params[:workout][:muscles])
    @workout.exercises = arr
    binding.pry
    if @workout.save
      # binding.pry
      redirect_to workout_path(@workout)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @workout.update(workout_params)
      redirect_to workout_path
    else
      render :edit
    end
  end

  def destroy
    @workout.destroy
    redirect_to workout_path
  end

  private

  def set_workout
    @workout = Workout.find(params[:id])
  end

  def workout_params
    params.require(:workout).permit(:user_id, :date)
  end

end
