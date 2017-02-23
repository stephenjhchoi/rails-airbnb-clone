class Lesson < ApplicationRecord
  belongs_to :user
  has_one :booking, dependent: :destroy

  CATEGORIES = ["Yoga", "Cardio", "Pilates", "Weight Lifting", "Boxing", "Tennis"]
  NEIGHBORHOOD = ["Chelsea", "Shoreditch", "Knightsbridge", "Mayfair", "Marylebone", "Hampstead"]
  validates :category, presence: true
  validates :price, presence: true
  validates :start_date_time, presence: true
  validates :duration, presence: true
  validates :description, presence: true
  validates :neighborhood, presence: true

  geocoded_by :neighborhood
  after_validation :geocode, if: :neighborhood_changed?
end
