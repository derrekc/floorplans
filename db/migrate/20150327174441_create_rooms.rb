class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :room_number
      t.string :label
      t.string :sublabel
      t.belongs_to :floorplan, index: true, foreign_key: true
      t.boolean :naming_opportunity
      t.boolean :nameable
      t.integer :dollar_amount
      t.boolean :pending_sale
      t.boolean :carrel

      t.timestamps null: false
    end
  end
end
