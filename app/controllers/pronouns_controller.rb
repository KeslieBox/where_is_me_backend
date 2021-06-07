class PronounsController < ApplicationController
    def index
        render json: Pronoun.all, key_transform: :camel_lower
    end
end
