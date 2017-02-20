class BookingsController < ApplicationController

  before_action :set_booking, only: :show
  #before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.lesson = Lesson.find(params[:id])

    if @booking.save
      redirect_to thank_you_path
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  #   if @user.update(booking_params)
  #     redirect_to bookings_path
  #   else
  #     render :edit
  # end

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
