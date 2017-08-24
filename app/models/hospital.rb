class Hospital < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # belongs_to :location
  has_many :reservations
  has_many :hospitals_departments
  has_many :departments, through: :hospitals_departments

  def location
    Location.find_by(id: self.location_id)
  end
end
