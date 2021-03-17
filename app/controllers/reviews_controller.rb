class ReviewsController < ApplicationController
    def show
        @review = Review.find(params[:id])
        render json: @review
    end
    
    def create
        review = Review.create(review_params)
        render json: review
    private
    
    def review_params
        params.permit(:user_id, :collaborator_id, :project_id, :content)
    end
end
