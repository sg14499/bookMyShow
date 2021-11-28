class Slot < ApplicationRecord
	belongs_to :movie
	belongs_to :screen
end
