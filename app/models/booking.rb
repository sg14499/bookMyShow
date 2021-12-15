class Booking < ApplicationRecord
	belongs_to :user
	belongs_to :slot

	after_destroy :log_destroy_action

	def log_destroy_action
    	puts 'Booking destroyed'
  	end
end
