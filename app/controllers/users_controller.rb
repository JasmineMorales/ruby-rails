class UsersController < ApplicationController
            #GET /users
            def index
                @users = User.all    
                render 200, json: @users
            end
        
            #POST /users
            def create
                @user = User.new(user_params)
        
                if @user.save
                    render 201, json: @user
                else
                    render 422, json: @user.errors
                end
            end
            
            #PUT /userss/:id
            def update
                @user = User.find(params[:id])
        
                if @user.update(user_params)
                    render 200, json: @user
                else
                    render 422, json: @user.errors
                end
            end
        
            #DELETE /users/:id
            def destroy
                @user = User.find(params[:id])
        
                if @user.destroy
                    head 204, json: {}
                else
                    render 422, json: @user.errors
                end
            end
        
            protected
            def user_params
                params.require(:user).permit(:name, :age)
            end
end
