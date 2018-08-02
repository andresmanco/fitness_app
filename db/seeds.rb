# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Exercise.destroy_all


users = User.create([
                              {user_name: 'alvarofitness', password: 'alvarofitness', first_name: 'Alvaro', last_name: 'De La Torre'},
                              {user_name: 'sydney', password: 'sydney', first_name: 'Sydney', last_name: 'Barlow'},
                              {user_name: 'rayan', password: 'rayan', first_name: 'Rayan', last_name: 'Estupido'},
                              {user_name: 'ruby', password: 'ruby', first_name: 'Ruby', last_name: 'Rails'},
                              {user_name: 'emily', password: 'emily', first_name: 'Emily', last_name: 'Collins'},
                              {user_name: 'jhon', password: 'jhon', first_name: 'Jonh', last_name: 'Kennedy'}
                              ])




exercises = Exercise.create([
                                {name: "Barbell Bench Press", muscle_group: "upper chest", muscle_part: "chest", high_intensity: false, equipment: true},
                                {name: "Flat Bench Dumbbell Press",muscle_group: "upper chest", muscle_part: "chest", high_intensity: false, equipment: true},
                                {name: "Flat Bench Dumbbell Fly", muscle_group: "upper chest", muscle_part: "chest", high_intensity: false, equipment: true},
                                {name: "Low-Incline Barbell Bench Press", muscle_part: "upper chest", muscle_group: "chest", high_intensity: false, equipment: true},
                                {name: "Low-Incline Bench Dumbbell Press", muscle_part: "upper_chest", muscle_group: "chest", high_intensity: false, equipment: true},
                                {name: "Low-Incline Bench Dumbbell Fly", muscle_part: "upper_chest", muscle_group: "chest", high_intensity: false, equipment: true},
                                {name: "Push-ups", muscle_part: "middle_chest", muscle_group: "chest", high_intensity: true, equipment: false},
                                {name: "Incline Push-ups", muscle_part: "upper_chest", muscle_group: "chest", high_intensity: true, equipment: false},
                                {name: "Single Arm Dumbbell Row", muscle_part: "lats", muscle_group: "back", high_intensity: true, equipment: true},
                                {name: "Wide Grip Pulldowns", muscle_part: "lats", muscle_group: "back", high_intensity: false, equipment: true},
                                {name: "Under grip Pulldowns", muscle_part: "lats", muscle_group: "back", high_intensity: false, equipment: true},
                                {name: "Straight Bar Cable Pulldown", muscle_part: "lats", muscle_group: "back", high_intensity: false, equipment: true},
                                {name: "Seated Cable Close Grip Row", muscle_part: "lats", muscle_group: "back", high_intensity: false, equipment: true},
                                {name: "Seated Cable Wide Grip Row", muscle_part: "lats", muscle_group: "back", high_intensity: false, equipment: true},
                                {name: "Pull-ups", muscle_part: "upper_back", muscle_group: "back", high_intensity: true, equipment: false},
                                {name: "Rowing Machine", muscle_part: "upper_back", muscle_group: "back", high_intensity: true, equipment: true},
                                {name: "Seated Dumbbell Press", muscle_part: "middle_delt", muscle_group: "shoulders", high_intensity: false, equipment: true},
                                {name: "Alternating Dumbbell Press", muscle_part: "middle_delt", muscle_group: "shoulders", high_intensity: false, equipment: true},
                                {name: "Seated Arnold Press", muscle_part: "middle_delt", muscle_group: "shoulders", high_intensity: false, equipment: true },
                                {name: "Alternating Arnold Press", muscle_part: "middle_delt", muscle_group: "shoulders", high_intensity: false, equipment: true},
                                {name: "Seated Military Press", muscle_part: "middle_delt", muscle_group: "shoulders", high_intensity: false, equipment: true},
                                {name: "Dumbbell Lateral Raises", muscle_part: "middle_delt", muscle_group: "shoulders", high_intensity: false, equipment: true},
                                {name: "Body Weight Shoulder Press", muscle_part: "middle_delt", muscle_group: "shoulders", high_intensity: true, equipment: false},
                                {name: "Weighted Air Punches", muscle_part: "middle_delt", muscle_group: "shoulders", high_intensity: true, equipment: false},
                                {name: "Skull Crushers (Bar or Dumbbells)", muscle_part: "long_head", muscle_group: "triceps", high_intensity: false, equipment: true},
                                {name: "Triceps Kickbacks (Cables or Dumbbells)", muscle_part: "long_head", muscle_group: "triceps", high_intensity: false, equipment: true},
                                {name: "Close Grip Triceps Press", muscle_part: "long_head", muscle_group: "triceps", high_intensity: false, equipment: true},
                                {name: "Triceps Dips", muscle_part: "long_head", muscle_group: "triceps", high_intensity: false, equipment: false},
                                {name: "Rope Pushdowns", muscle_part: "long_head", muscle_group: "triceps", high_intensity: false, equipment: true},
                                {name: "Straight Bar Pushdowns", muscle_part: "long_head", muscle_group: "triceps", high_intensity: false, equipment: true},
                                {name: "Seated Dumbbell Curls", muscle_part: "middle_head", muscle_group: "biceps", high_intensity: false, equipment: true},
                                {name: "Seated Incline Dumbbell Curls", muscle_part: "middle_head", muscle_group: "biceps", high_intensity: false, equipment: true},
                                {name: "Hammer Dumbbell Curls (Seating or Standing)", muscle_part: "middle_head", muscle_group: "biceps", high_intensity: false, equipment: true},
                                {name: "Ez Bar Close Grip Curls", muscle_part: "middle_head", muscle_group: "biceps", high_intensity: false, equipment: true},
                                {name: "Ez Bar Wide Grip Curls", muscle_part: "middle_head", muscle_group: "biceps", high_intensity: false, equipment: true},
                                {name: "21’s", muscle_part: "middle_head", muscle_group: "biceps", high_intensity: false, equipment: true},
                                {name: "Leg Press", muscle_part: "hamstrings", muscle_group: "legs", high_intensity: false, equipment: true},
                                {name: "Seated Leg Press", muscle_part: "hamstrings", muscle_group: "legs", high_intensity: false, equipment: true},
                                {name: "Alternating Lunges", muscle_part: "hamstrings", muscle_group: "legs", high_intensity: false, equipment: false},
                                {name: "Stationary Lunges", muscle_part: "hamstrings", muscle_group: "legs", high_intensity: false, equipment: false},
                                {name: "Goblet Squats", muscle_part: "glutes", muscle_group: "legs", high_intensity: false, equipment: false},
                                {name: "Barbell Squats", muscle_part: "glutes", muscle_group: "legs", high_intensity: false, equipment: true},
                                {name: "Jumping Squats", muscle_part: "hamstrings", muscle_group: "legs", high_intensity: true, equipment: false},
                                {name: "Jumping Lunges", muscle_part: "hamstrings", muscle_group: "legs", high_intensity: true, equipment: false},
                                {name: "360 Jumping Squats", muscle_part: "glutes", muscle_group: "legs", high_intensity: false, equipment: false},
                                {name: "Crunches", muscle_part: "upper_abs", muscle_group: "abs", high_intensity: false, equipment: false},
                                {name: "Sit-ups", muscle_part: "upper_abs", muscle_group: "abs", high_intensity: false, equipment: false},
                                {name: "Plank", muscle_part: "core_strength", muscle_group: "abs", high_intensity: false, equipment: false},
                                {name: "Side Plank", muscle_part: "obliques", muscle_group: "abs", high_intensity: false, equipment: false},
                                {name: "Leg Raises", muscle_part: "lower_abs", muscle_group: "abs", high_intensity: false, equipment: false},
                                {name: "Reverse Crunch", muscle_part: "lower_abs", muscle_group: "abs", high_intensity: false, equipment: false},
                                {name: "Burpees", muscle_part: "", muscle_group: "full body", high_intensity: true, equipment: false},
                                {name: "Jumping Jacks", muscle_part: "", muscle_group: "full body", high_intensity: true, equipment: false},
                            ])
