class AddColumnToMovie < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :review_score, :float

  end
end
