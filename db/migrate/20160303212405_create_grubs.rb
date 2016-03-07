class CreateGrubs < ActiveRecord::Migration
  def change
    create_table :grubs do |t|
      t.string :name
      t.integer :amount

      t.timestamps null: false
    end
  end
end
