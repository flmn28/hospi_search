class Department < ApplicationRecord
  has_many :hospitals_departments
  has_many :hospitals, through: :hospitals_departments
end
