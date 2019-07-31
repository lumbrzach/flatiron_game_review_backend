class Api::V1::CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        @comment = Comment.create(comment_params)
        if @comment.save
        render json: @comment, status: :created
        else
        render json: @comment.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        if @comment.destroy
        head :no_content
        else
        render json: @comment.errors, status: :unprocessable_entity
        end
    end

    private

    def comment_params
        params.require('comment').permit(:content)
    end
end
