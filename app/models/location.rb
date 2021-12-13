class Location < ApplicationRecord
	has_many :cinemas, dependent: :destroy
end
