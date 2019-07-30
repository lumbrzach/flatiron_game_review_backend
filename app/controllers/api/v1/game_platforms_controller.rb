class Api::V1::GamePlatformsController < ApplicationController
    def index
        game_platforms = Platform.all
        render json: game_platforms
    end
end
