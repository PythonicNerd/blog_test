class AddDownvotedByToPost < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :downvoted_by, foreign_key: true
  end
end
