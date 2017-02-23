class Lesson < ApplicationRecord
  belongs_to :user
  has_one :booking
  CATEGORIES = ["Yoga", "Cardio", "Pilates", "Weights", "Boxing", "Tennis"]
  NEIGHBORHOOD = ["Chelsea", "Shoreditch", "Knightsbridge", "Mayfair", "Marylebone", "Hampstead"]
  validates :category, presence: true
  validates :price, presence: true
  validates :start_date_time, presence: true
  validates :duration, presence: true
  validates :description, presence: true
  validates :neighborhood, presence: true

  geocoded_by :neighborhood_in_london
  after_validation :geocode, if: :neighborhood_changed?

  private
  def neighborhood_in_london
    self.neighborhood + ', London, UK'
  end
end
