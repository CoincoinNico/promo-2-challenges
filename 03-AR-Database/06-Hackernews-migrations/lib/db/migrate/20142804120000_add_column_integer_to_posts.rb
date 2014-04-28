class AddColumnIntegerToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :integer, :integer
  end
end