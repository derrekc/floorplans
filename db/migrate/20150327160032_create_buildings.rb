class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name, limit: 35
      t.string :label
      t.string :description

      t.timestamps null: false
    end
  end
end
