class ChangeRatingToAverageRating < ActiveRecord::Migration[7.0]
  def change
    rename_column :developers, :rating, :average_rating
  end
end
