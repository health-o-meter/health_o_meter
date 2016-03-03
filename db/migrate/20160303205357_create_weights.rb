class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.integer :amount
      t.date :date

      t.timestamps null: false
    end
  end
end
