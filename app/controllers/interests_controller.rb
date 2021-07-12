class InterestsController < ApplicationController
    def index
        render json: Interest.all, key_transform: :camel_lower
    end

    def show
        interest = Interest.find_by(id: params[:id])
        render json: interest, key_transform: :camel_lower
    end

    private

    def interest_params
        # should these be pronouns_ids, etc? how do i format from frontend to backend
        params.require(:interest).permit(
            :id, 
            user_ids: [],
        )
    end
end
