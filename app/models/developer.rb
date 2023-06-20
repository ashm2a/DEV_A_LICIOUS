class Developer < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :first_name, :last_name, :description, :city, :price_per_day, presence: true
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 1 }
  validates :description, length: { minimum: 150, maximum: 1000 }
end
