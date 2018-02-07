class Post < ApplicationRecord
  has_one :user
  has_many :comments
  has_many :upvoted_bys, :class_name => 'User', :foreign_key => 'upvoted_by_id'
  has_many :downvoted_bys, :class_name => 'User', :foreign_key => 'downvoted_by_id'

  belongs_to :user, :optional => true
end
