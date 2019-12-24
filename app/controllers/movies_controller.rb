class MoviesController < ApplicationController
  # before_action :set_movie, only: [:show]
  before_action :authenticate_user!

   # 映画一覧の表示
   def show
    # if user_signed_in?
    @movie = Movie.find(params[:id])
    @review = Review.new

    # @movie = current_user.movies.find(params[:id])
    # @reviews = Review.where(movie_id: @movie.id).order("created_at DESC")
    # reviews = Review.where(movie_id: params[:id])
    # total_score = 0
    # if reviews.length > 0
    #   reviews.each do |review|
    #     total_score += review.score
    #   end
    #   average_score = total_score / reviews.length
    #   @movie.review_score = average_score.round(1)
    #   @movie.save
    # else
    #   @movie.review_score = 0
    #   @movie.save
    # end
  end


  # def index
  #   @movies = current_user.movies.order(created_at: :desc)
  #   # @movies = Movie.all
  # end

  # def new
  #   @movie = current_user.movies.new
  # end
  



# private
  # ストロングパラメーター
  # def  movie_params
  #   params.require(:movie).permit(:title, :genre,
  #                               :description, :app, :review_score)
  # end

  # def set_movie
  #   @movie = Movie.find(params[:id])
  # end
end
