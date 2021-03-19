class UsersController < ApplicationController
    before_action :authenticate, only: [:verify]

    def login
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            token = JWT.encode({user_id: user.id}, 'codename', 'HS256')
            @current_user = user
            render json: {user: user, token: token}
        else    
            render json: {errors: ["Invalid Username or Password"]} 
        end   
    end

    def verify
        user = @current_user
        render json: @current_user
    end

    def logout
        @current_user = nil
    end

    def index
        users = User.all
        render json: users
    end
    
    def show
        user = User.find(params[:id])
        render json: user
    end
    
    def create
        new_user = User.create(user_params)
        if new_user.id?
            token = JWT.encode({user_id: new_user.id}, 'codename', 'HS256')
            render json: {user: new_user, token: token}, status: :created
        else
            render json: new_user.errors.full_messages
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
