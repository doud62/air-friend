class BookingsController < ApplicationController
  before_action :select_booking, to: :update, :edit, :destroy, :show

  def index
    @index = Booking.all
  end
  
  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path
    else
      render :update
    end
  end

  def edit
  end

  def destroy
    if @booking.destroy
      redirect_to bookings_path
    end
  end

  private

  def select_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :duration, :address)
  end
end
