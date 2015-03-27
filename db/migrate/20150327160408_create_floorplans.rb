class CreateFloorplans < ActiveRecord::Migration
  def change
    create_table :floorplans do |t|
      t.string :name, limit: 60
      t.string :label
      t.string :sublabel
      t.belongs_to :building, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
