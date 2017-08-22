class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :prefecture
      t.string :city
      t.string :district

      t.timestamps
    end
  end
end
