class BookingsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @bookings = @user.bookings
  end

  def show
    @bookings = Booking.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    ##@booking = Booking.new
  end

  def create
    @user = User.find(params[:user_id])
    @booking = @user.bookings.create!(booking_params)
    if @booking.save
        BookingMailer.with(booking: @booking).new_booking_email.deliver_later

        flash[:success] = "Thank you for your Booking!!!"
        redirect_to user_path(@user)
    else
        flash.now[:error] = "Your booking form had some errors. Please check the form and resubmit."
        render :new
    end
  end

  def destroy
    @bookings = Booking.find(params[:id])
    @bookings.destroy

    redirect_to root_path
  end

  private
    def booking_params
      params.require(:booking).permit(:slot_id,:booking_date,:total_cost)
    end

end
