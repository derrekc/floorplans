class Floorplan < ActiveRecord::Base
  belongs_to 	:building
	has_one			:floor_area

	scope		:in_building, -> building {
		joins(:building).
		where('buildings.name = ?', building)
	}
end
