class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  validates :location, presence: true
  validates :price, presence: true
  validates :date, presence: true
  validates :duration, presence: true
  validates :description, presence: true
  validates :neighborhood, presence: true
end
