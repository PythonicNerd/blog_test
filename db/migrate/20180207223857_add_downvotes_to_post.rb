class AddDownvotesToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :downvotes, :integer
  end
end
