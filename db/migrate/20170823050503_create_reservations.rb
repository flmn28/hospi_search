class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :patient_id
      t.integer :hospital_id
      t.integer :department_id
      t.datetime :reserved_time

      t.timestamps
    end
  end
end
