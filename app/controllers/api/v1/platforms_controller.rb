class Api::V1::PlatformsController < ApplicationController
    def index
        platforms = Platform.all
        render json: platforms
    end
end
