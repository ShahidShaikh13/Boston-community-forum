class AddVotesToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :upvotes, :integer
    add_column :posts, :downvotes, :integer
  end
end
