class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end

    
    def new
        @review = Review.new
        @book = Book.find(params[:book_id])
    end

    def create
        @review = Review.new(review_params)
        @book = Book.find(params[:book_id])
        @review.book = @book
        if @review.save
            redirect_to book_path(@book)
        else
            render 'books/show'
        end
    end

    private

    def review_params
        params.require(:review).permit(:content, :rating, :booking_id)
    end

end
