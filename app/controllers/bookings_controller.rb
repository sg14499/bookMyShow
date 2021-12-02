class BookingsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @bookings = @user.bookings
  end

  def show
    @bookings = Booking.find(params[:id])
  end

  def new
    @bookings = Booking.new
  end

  def create
    @user = User.find(params[:user_id])
    @booking = @user.bookings.create(booking_params)
    redirect_to user_path(@user)

  end

  private
    def booking_params
      params.require(:bookings).permit(:user_id,:slot_id,:booking_date,:total_cost)
    end

end
