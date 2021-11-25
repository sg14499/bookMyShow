# Book My Show Clone

## Building Online Movie ticket booking application using Ruby on Rails like BookMyShow

### Data Models:

User:
	> name
	> email

movie:
	> name
	> description
	> release_date
	> duration
	> category
	> language

cinema:
	> name
	> location_id

location:
	> city

screen:
	> cinema_id
	> no_of_seats

slot:
	> movie_id
	> screen_id
	> slot_time
	> num_seat_booked   


bookings:
	> user_id
	> slot_id
	> booking_date
	> total_cost



### Relationships:

User -> has_many :bookings

movie -> has_many :bookings

screen ->has_many :movies, through: :slot

location -> has_many :cinema
cinema -> belong_to :location

cinema -> has_many :screen


screen -> has_many :slot
screen ->belongs_to :cinema

slot -> belongs_to :movie
slot -> belongs_to :screen

booking -> belongs_to :user
booking -> belongs_to :slot




