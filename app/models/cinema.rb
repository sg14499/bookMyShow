class Cinema < ApplicationRecord
	has_many :screens
	belongs_to :location
end
