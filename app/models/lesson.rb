class Lesson < ApplicationRecord
  belongs_to :user
  has_one :booking
  CATEGORIES = ["Yoga", "Cardio", "Pilates", "Weight Lifting", "Boxing", "Tennis"]
  validates :category, presence: true
  validates :price, presence: true
  validates :start_date_time, presence: true
  validates :duration, presence: true
  validates :description, presence: true
  validates :neighborhood, presence: true
end
