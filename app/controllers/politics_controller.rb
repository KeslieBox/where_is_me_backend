class PoliticsController < ApplicationController
    def index
        render json: Politic.all, key_transform: :camel_lower
    end
end
