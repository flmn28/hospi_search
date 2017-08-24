class Reservation < ApplicationRecord
  belongs_to :patient
  belongs_to :hospital
  belongs_to :department
end
