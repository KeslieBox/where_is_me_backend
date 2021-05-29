class UsersController < ApplicationController

    def index
        render json: User.all, key_transform: :camel_lower
    end

    def show 
        user = User.find_by(id: params[:id])
        render json: user, key_transform: :camel_lower
    end
end
