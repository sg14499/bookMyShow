class Slot < ApplicationRecord
	belongs_to :movies
	belongs_to :screens
end
