class WishesController < ApplicationController

  def create
    @wish = Wish.new
    @book = Book.find(params[:book_id])
    @wish.user_id = current_user.id
    @wish.book_id = @book.id
      if @wish.save
        redirect_to books_path
      else
        render :new
      end
  end


  def destroy
    @wish = Wish.find(params:[:id])
    @wish.destroy

  end  

   




end
