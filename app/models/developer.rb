class Developer < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, :description, :city, :url_picture, :price_per_day, presence: true
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 1 }
  validates :description, length: { minimum: 150, maximum: 1000 }
end
