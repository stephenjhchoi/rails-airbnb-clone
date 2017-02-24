class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  # validates :location, presence: true

end
