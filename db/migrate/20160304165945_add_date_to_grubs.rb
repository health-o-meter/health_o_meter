class AddDateToGrubs < ActiveRecord::Migration
  def change
    add_column :grubs, :date, :date
  end
end
