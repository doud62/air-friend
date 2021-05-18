class Friend < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :friend_description, presence: true
  validates :address, presence: true
  validates :price, presence: true
end
