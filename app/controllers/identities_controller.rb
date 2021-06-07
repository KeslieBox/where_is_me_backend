class IdentitiesController < ApplicationController
    def index
        render json: Identity.all, key_transform: :camel_lower
    end
end
