class MatchesController < ApplicationController


    def create
        match = Match.create(match_params)
        user = User.find_by(id: params[:match][:liker_id])

        # render back entire user who was the liker        
        render json: user, key_transform: :camel_lower
    end

    private

    def match_params
        params.require(:match).permit(:liker_id, :liked_id)
    end

end