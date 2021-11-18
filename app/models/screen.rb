class Screen < ApplicationRecord
	has_many :movies, through: :slots
	has_many :slots
	belongs_to :cinemas
end
