class Api::V1::GamesController < ApplicationController

    def index
        games = Game.all
        render json: games
    end

    def show
        game = Game.find(params[:id])
        render json: game, include: [:comments, :likes, :ratings, :platforms]
    end

    def create
        @game = Game.create(title: game_params["title"], image: game_params["image"], release_date: game_params["release_date"], genre: game_params["genre"], description: game_params["description"])
        if @game.save
            game_params["platformIds"].each do |id|
                @game_platform = GamePlatform.create(game_id: @game.id, platform_id: id)
            end
        render json: @game, status: :created, include: [:comments, :likes, :ratings, :platforms]
        else
        render json: @game.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @game = Game.find(params[:id])
        @game.destroy
        if @game.destroy
        head :no_content
        else
        render json: @game.errors, status: :unprocessable_entity
        end
    end

    private

    def game_params
        params.require('game').permit(:title, :image, :release_date, :genre, :description, :platformIds => [])
    end
    
end

