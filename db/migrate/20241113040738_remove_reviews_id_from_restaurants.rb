class RemoveReviewsIdFromRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_column :restaurants, :reviews_id
  end
end
