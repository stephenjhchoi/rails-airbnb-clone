class BookingsController < ApplicationController

  before_action :set_booking, only: :show
  #before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.status = 'pending'
    @booking.lesson = Lesson.find(params[:lesson_id])

    if @booking.save
      flash[:notice] = "Thanks for booking #{@booking.lesson.user.username ? 'with ' + @booking.lesson.user.username : '! '}"
      redirect_to dashboard_path
    end
  end

  # def edit
  # end

  def update
    if params[:status] == 'accepted'
      booking.
    # if @user.update(booking_params)
    #   redirect_to bookings_path
    # else
    #   render :edit
    # end
  end

  # def destroy
  #   @user.destroy
  #   redirect_to #somewhere user home
  # end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:location)
  end
end
