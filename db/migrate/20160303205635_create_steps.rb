class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :taken_steps
      t.date :date

      t.timestamps null: false
    end
  end
end
