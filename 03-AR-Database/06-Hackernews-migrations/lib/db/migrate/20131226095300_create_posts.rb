class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string    :name
      t.datetime  :date
      t.string    :source_url
    end
  end
end