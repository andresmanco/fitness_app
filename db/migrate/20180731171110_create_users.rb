class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_type
      t.string :first_name
      t.string :last_name
      t.float :weight
      t.float :height
      t.float :body_fat
      t.float :bmi
      t.string :goal

      t.timestamps
    end
  end
end
