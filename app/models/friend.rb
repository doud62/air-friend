class Friend < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price, presence: true

end
