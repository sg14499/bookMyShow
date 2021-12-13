class Cinema < ApplicationRecord
	has_many :screens, dependent: :destroy
	belongs_to :location
end
