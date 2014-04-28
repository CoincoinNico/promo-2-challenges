class RemoveColumnIntegerToPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :integer
  end
end