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
        @game = Game.create(game_params)
        if @game.save
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
        params.require('game').permit(:title, :image, :release_date, :genre)
    end
    
end

