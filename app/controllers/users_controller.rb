class UsersController < ApplicationController
    def index
        render json: User.all, key_transform: :camel_lower
    end

    def show 
        user = User.find_by(id: params[:id])
        render json: user, key_transform: :camel_lower
    end

    def create 
        user = User.new(user_params)
        if user.save
            render json: user, key_transform: :camel_lower
        else 
            render json: {message: "Cannot find user with that id"}
        end
    end

    def update
        # need error handling
        user = User.find_by(id: params[:id])
        user.update(user_params)
        render json: user, key_transform: :camel_lower
    end

    def match
        user = User.find_by(id: params[:liker_id])
        liked_ids = user.liked_ids << params[:liked_id].to_i
        render json: liked_ids, key_transform: :camel_lower
    end

    def login
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            render json: user, key_transform: :camel_lower
        elsif user
            render json: {message: "Invalid password"}
        else  
            render json: {message: 'Invalid username'}
        end
    end

    def authenticate
        user = User.find_by(id: params[:user][:id])
        if user
            render json: user, key_transform: :camel_lower
        else 
            render json: {message: "Cannot find user with that id"}
        end
    end

    private 

    def user_params
        # should these be pronouns_ids, etc? how do i format from frontend to backend
        params.require(:user).permit(
            :id, 
            :username, 
            :password, 
            pronoun_ids: [],
            identity_ids: [],
            interest_ids: [],
            looking_for_ids: [],
            politic_ids: [],
            status_ids: [],
            liked_matches: [],
            liker_matches: [],
            liked_ids: [],
            liker_ids: [],
            liked_id: [],
            liker_id: [],
            likers: [],
            liked: []
        )
    end
end
