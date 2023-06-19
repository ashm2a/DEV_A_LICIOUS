class DeleteAverageRatingFromDevelopers < ActiveRecord::Migration[7.0]
  def change
    remove_column :developers, :average_rating
  end
end
