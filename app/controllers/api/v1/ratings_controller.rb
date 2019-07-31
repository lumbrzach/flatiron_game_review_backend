class Api::V1::RatingsController < ApplicationController
    def index
        ratings = Rating.all
        render json: ratings
    end

    def show
        rating = Rating.find(params[:id])
        render json: rating
    end
end
