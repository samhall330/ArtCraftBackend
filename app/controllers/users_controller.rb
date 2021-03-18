class UsersController < ApplicationController
    # def login
    #     user = User.first
    #     render json: user
    # end
    
    def index
        users = User.all
        render json: users
    end
    
    def show
        user = User.first
        render json: user
    end
    
    def create
        if User.find_by(username: params[:username])
            render json: {error: "This user already exists"}
        else 
            @user = User.create(user_params)
            render json: @user
        end
    end
    
    def destroy
        user = User.find_by(id: params[:id])
        user.destroy!
        render json: {}
    end

    def update
        @user = User.find_by(id: params[:id])
        @user.update(user_params)
        render json: @user
    end

    private

    def user_params
        params.permit(:name, :username, :profile_pic, :bio, :phone, :password)
    end
end
