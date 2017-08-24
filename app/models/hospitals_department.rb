class HospitalsDepartment < ApplicationRecord
  belongs_to :hospital
  belongs_to :department
end
