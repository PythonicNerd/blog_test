class AddUpvotedByToPost < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :upvoted_by, foreign_key: true
  end
end
