class BookingsController < ApplicationController

def new
  @booking = Booking.new
  @book = Book.find(params[:book_id])
end

def create
  @booking = Booking.new(booking_params)
  @book = Book.find(params[:book_id])
  @booking.book = @booking

end


private
def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end



end
