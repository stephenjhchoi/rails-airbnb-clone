class Lesson < ApplicationRecord
  belongs_to :user
  has_one :booking

  validates :category, presence: true
  validates :price, presence: true
  validates :date, presence: true
  validates :duration, presence: true
  validates :description, presence: true
  validates :neighborhood, presence: true
end
