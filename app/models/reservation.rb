class Reservation < ApplicationRecord
  belongs_to :patient
  belongs_to :hospital
end
