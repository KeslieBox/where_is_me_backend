class UsersController < ApplicationController
    def index
        render json: User.all, key_transform: :camel_lower
    end

    def show 
        user = User.find_by(id: params[:id])
        render json: user, key_transform: :camel_lower
    end

    def create 
        binding.pry
        user = User.create(user_params)
        render json: user, key_transform: :camel_lower
    end


    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
