class ReviewsController < ApplicationController
 # レビューの投稿
  def create
    @movie = Movie.find(params[:movie_id])
    @review = Review.new
    if @review.update(review_params)
      # flash[:success] = '投稿が完了しました'
      redirect_to movie_path(@movie), notice: '投稿が完了しました'
        @movie.review_score = @movie.reviews.average(:score).round(1)
        @movie.save
    else
      # flash[:danger] = '正しく入力してください'
      redirect_to movie_path(@movie), notice: '全ての項目に入力してください'
    end
  end

#   def destroy
    
# end

private
# ストロングパラメーター
  def  review_params
  params.require(:review).permit(:name, :content, :score, :movie_id)
  end
end
