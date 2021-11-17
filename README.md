# Book My Show Clone

Building Online Movie ticket booking application using Ruby on Rails like BookMyShow

#Data Models

User
	name
	email

movie
	movie_name
	description
	release_date
	duration
	category
	language

cinema
	name
	location_id

location
	city

screen
	cinema_id
	no_of_seats

slot
	movie_id
	screen_id
	time
	num_seat_booked   


bookings
	user_id
	slot_id
	date
	total_cost



