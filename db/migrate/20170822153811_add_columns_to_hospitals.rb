class AddColumnsToHospitals < ActiveRecord::Migration[5.0]
  def change
    add_column :hospitals, :name, :string
    add_column :hospitals, :image, :string
    add_column :hospitals, :location_id, :integer
  end
end
