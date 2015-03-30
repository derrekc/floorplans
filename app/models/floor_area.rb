class FloorArea < ActiveRecord::Base
  belongs_to :floorplan
	scope :poly, -> { where(shape: 'poly') }

	# Scopes for the various floors
	scope :at_floor, -> floor_label {
		joins(:floorplan).
		where("floorplans.label = ?", floor_label)
	}

	after_initialize :init

	def init
		self.shape	||= :poly
	end
end
