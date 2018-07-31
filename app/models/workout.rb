class Workout < ApplicationRecord
  belongs_to :user
  has_many :wor
  has_many :exercises
end
