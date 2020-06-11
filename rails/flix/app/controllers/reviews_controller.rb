class ReviewsController < ApplicationController
    before_action :require_signin
    before_action :set_movie


    def index
        @reviews = @movie.reviews
    end

    def new
        @review = @movie.reviews.build

    end

    def create
        @review = @movie.reviews.build(review_params)
        @review.user = current_user
        if @review.save
            redirect_to movie_reviews_path(@movie)
            flash[:notice]  = "Thanks for your review"
        else
            render :new
        end
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to movie_reviews_path(@movie), alert: "Review successfully deleted!"

    end



    private

    def set_movie
        @movie = Movie.find(params[:movie_id])
    end

    def review_params
        params.require(:review).permit(:stars,:comment)
    end


end
