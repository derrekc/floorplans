class Floorplan < ActiveRecord::Base
  belongs_to 	:building
	has_one			:floor_area
end
