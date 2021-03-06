class Movie < ApplicationRecord
	has_many :bookings, dependent: :destroy
	validates :name, presence: true
	validates :description, presence: true, length: {maximum: 100}
	validates :category, presence: true
	validates :language, presence: true
	validates :duration, presence: true
	validates :release_date, presence: true 
end
