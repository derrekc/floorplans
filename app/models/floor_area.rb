class FloorArea < ActiveRecord::Base
  belongs_to :floorplan
	scope :poly, -> { where(shape: 'poly') }
	scope :active, -> {
		joins(:floorplans).
		where("floorplans.active = ?", 1)
	}
	after_initialize :init

	def init
		self.shape	||= :poly
	end
end
