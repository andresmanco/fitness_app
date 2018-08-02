class User < ApplicationRecord
  has_many :workouts
  has_many :user_exercises
  has_many :exercises, through: :user_exercises
  validates :user_name, presence: true
  validates :password_digest, presence: true, length: { in: (8..20) }
  has_secure_password

  def full_name
    "#{first_name} #{last_name}"
  end

end
