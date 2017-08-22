class CreateHospitalsDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :hospitals_departments do |t|
      t.integer :hospital_id
      t.integer :department_id

      t.timestamps
    end
  end
end
