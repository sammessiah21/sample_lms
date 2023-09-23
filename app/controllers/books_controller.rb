class BooksController < ApplicationController
	def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end



	def new

	end

	def create
          # render plain: params[:book].inspect
          @book = Book.new(book_params)

          @book.save
          redirect_to @book
	end

	private def book_params
		params.require(:book).permit(:author, :publisher)

	end

  # def create 
  #   @book = Book.new(params.require(:book).permit(:author, :publisher))
  #   render plain: @book

  # end
end
