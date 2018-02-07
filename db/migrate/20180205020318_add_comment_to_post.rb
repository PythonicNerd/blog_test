class AddCommentToPost < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :comment, foreign_key: true
  end
end
