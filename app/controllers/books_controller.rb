class BooksController < ApplicationController
    #GET /books
    def index
        @books = Book.all

        render 200, json: @books
    end

    #POST /books
    def create
        @book = Book.new(book_params)

        if @book.save
            render 201, json: @book
        else
            render 422, json: @book.errors
        end
    end
    
    #PUT /books/:id
    def update
        @book = Book.find(params[:id])

        if @book.update(book_params)
            render 200, json: @book
        else
            render 422, json: @book.errors
        end
    end

    #DELETE /books/:id
    def destroy
        @book = Book.find(params[:id])

        if @book.destroy
            head 204, json: {}
        else
            render 422, json: @book.errors
        end
    end

    protected
    def book_params
        params.require(:book).permit(:name, :description)
    end
end
