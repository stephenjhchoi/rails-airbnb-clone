class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_mamy :lessons, dependent: :destroy
  has_mamy :bookings, dependent: :destroy

  validates :username, uniquness: true, presence: true
  validates :email, uniquness: true, presence: true
end

