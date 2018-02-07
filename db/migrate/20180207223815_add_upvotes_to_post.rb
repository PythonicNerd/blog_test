class AddUpvotesToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :upvotes, :integer
  end
end
