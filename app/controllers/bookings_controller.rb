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
            redirect_to book_path(@book)
        else
            render :new
        end
    end

  def show
    @booking = Booking.find(params[:id])
    @book = @booking.book
    @user = @booking.user
  end

  def approve
    @booking = Booking.find(params[:id])
    @booking.update(state: "Approved")
    redirect_to booking_path(@booking)
    # need to add a state file but confused wheather it should be boolean or string
    #as in like three strings one for pending, approved or rejected
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.update(state: "Rejected")
    redirect_to booking_path(@booking)
    # need to add a state file but confused wheather it should be boolean or string
    #as in like three strings one for pending, approved or rejected
  end


    private

    def booking_params
        params.require(:booking).permit(:start_date, :end_date, :price)
    end

end
