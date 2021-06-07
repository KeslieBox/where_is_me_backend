class InterestsController < ApplicationController
    def index
        render json: Interest.all, key_transform: :camel_lower
    end
end
