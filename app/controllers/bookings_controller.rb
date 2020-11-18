class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @book = Book.find(params[:book_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @book = Book.find(params[:book_id])
    @booking.user = current_user
    @booking.book = @book
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @book = @booking.book
    @user = @booking.user
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price)
  end


end
