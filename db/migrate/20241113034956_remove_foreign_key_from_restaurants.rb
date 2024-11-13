class RemoveForeignKeyFromRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :restaurants, :reviews, column: "reviews_id"
  end
end
