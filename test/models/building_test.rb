require 'test_helper'

class BuildingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	test "Create Building" do
		building = buildings(:perkins)
		#building = Building.create(name: 'perkins', label: 'Perkins')
		assert(building.save)
		assert_not_nil(building)
		assert(building.name == 'perkins')
	end
end
