class RemoveDistrictFromLocations < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :district, :integer
  end
end
