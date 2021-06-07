class LookingForsController < ApplicationController
    def index
        render json: LookingFor.all, key_transform: :camel_lower
    end
end
