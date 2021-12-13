class Screen < ApplicationRecord
	has_many :movies, through: :slots, dependent: :nullify
	has_many :slots
	belongs_to :cinema
end
