class CreateFloorAreas < ActiveRecord::Migration
  def change
    create_table :floor_areas do |t|
      t.string :coords, limit: 750
      t.belongs_to :floorplan, index: true, foreign_key: true
      t.string :shape

      t.timestamps null: false
    end
  end
end
