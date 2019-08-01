class Api::V1::GamePlatformsController < ApplicationController
    def index
        game_platforms = Platform.all
        render json: game_platforms
    end
   
    def show
        game_platform = GamePlatform.find(params[:id])
        render json: game_platform, include: [:games, :platforms]
    end

    def create
        @game_platform = GamePlatform.create(game_platform_params)
        if @game_platform.save
        render json: @game_platform, status: :created, include: [:games, :platforms]
        else
        render json: @game_platform.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @game_platform = GamePlatform.find(params[:id])
        @game_platform.destroy
        if @game_platform.destroy
        head :no_content
        else
        render json: @game_platform.errors, status: :unprocessable_entity
        end
    end

    private

    def game_platform_params
        params.require('game_platform').permit(:title, :image, :release_date, :genre, :description, :platformIds => [])
    end
end
