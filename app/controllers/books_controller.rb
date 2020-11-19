class BooksController < ApplicationController
    
    def index
      if params[:query].present?
        @books = Book.search_by_title_and_author(params[:query])
      else
        @books = Book.all
      end
        @markers = @books.geocoded.map do |book|
          {
            lat: book.latitude,
            lng: book.longitude
          }
        end
    end
  
    def show
      @book = Book.find(params[:id])
    end

    def new
      @book = Book.new
    end

    def create
      @book = Book.new(book_params)
        @book.user = current_user
          if @book.save!
            redirect_to book_path(@book)
          else
            render :new
          end
    end

    def destroy
      @book = Book.find(params[:id])
      @book.destroy
      redirect_to books_path
    end

    private

    def book_params
      params.require(:book).permit(:title, :author, :genre, :condition, :year, :price, :publisher, :photo, :address)
    end
end
