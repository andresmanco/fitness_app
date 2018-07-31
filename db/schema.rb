# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_31_174124) do

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "muscle_group"
    t.string "muscle_part"
    t.boolean "equipment"
    t.boolean "high_intensity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_exercise", force: :cascade do |t|
    t.integer "user_id"
    t.integer "exercise_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "user_type"
    t.string "first_name"
    t.string "last_name"
    t.float "weight"
    t.float "height"
    t.float "body_fat"
    t.float "bmi"
    t.string "goal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.float "weight"
    t.integer "sets"
    t.integer "reps"
    t.time "rest_time"
    t.date "date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts_exercises", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "exercise_id"
  end

end
