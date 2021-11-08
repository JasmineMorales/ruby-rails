class AuthorsController < ApplicationController
    #GET /authors
    def index
        @authors = Author.all

        render 200, json: @authors
    end

    #POST /authors
    def create
        @author = Author.new(author_params)

        if @author.save
            render 201, json: @author
        else
            render 422, json: @author.errors
        end
    end
    
    #PUT /authors/:id
    def update
        @author = Author.find(params[:id])

        if @author.update(author_params)
            render 200, json: @author
        else
            render 422, json: @author.errors
        end
    end

    #DELETE /authors/:id
    def destroy
        @author = Author.find(params[:id])

        if @author.destroy
            head 204, json: {}
        else
            render 422, json: @author.errors
        end
    end

    protected
    def author_params
        params.require(:author).permit(:name, :bio, :country)
    end
end
