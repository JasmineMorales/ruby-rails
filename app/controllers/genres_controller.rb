class GenresController < ApplicationController
        #GET /genres
        def index
            @genres = Genre.all    
            render 200, json: @genres
        end
    
        #POST /genres
        def create
            @genre = Genre.new(genre_params)
    
            if @genre.save
                render 201, json: @genre
            else
                render 422, json: @genre.errors
            end
        end
        
        #PUT /genres/:id
        def update
            @genre = Genre.find(params[:id])
    
            if @genre.update(genre_params)
                render 200, json: @genre
            else
                render 422, json: @genre.errors
            end
        end
    
        #DELETE /genres/:id
        def destroy
            @genre = Genre.find(params[:id])
    
            if @genre.destroy
                head 204, json: {}
            else
                render 422, json: @genre.errors
            end
        end
    
        protected
        def genre_params
            params.require(:genre).permit(:name, :description)
        end
end
