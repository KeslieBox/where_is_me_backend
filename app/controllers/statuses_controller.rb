class StatusesController < ApplicationController
    def index
        render json: Status.all, key_transform: :camel_lower
    end
end
