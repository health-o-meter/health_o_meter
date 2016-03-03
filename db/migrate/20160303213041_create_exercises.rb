class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :exercise_type_id
      t.integer :energy_burned

      t.timestamps null: false
    end
  end
end
