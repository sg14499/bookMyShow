class BookingsController < ApplicationController
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
