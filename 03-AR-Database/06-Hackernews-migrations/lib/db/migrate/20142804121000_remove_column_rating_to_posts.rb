class RemoveColumnRatingToPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :rating
  end
end