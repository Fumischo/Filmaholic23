class AddReviewScoreToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :review_score, :float, default: 0, null: false

  end
end
