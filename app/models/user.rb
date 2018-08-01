class User < ApplicationRecord
  has_many :workouts
  has_many :user_exercises
  has_many :exercises, through: :user_exercises

  def full_name
    "#{first_name} #{last_name}"
  end

end
