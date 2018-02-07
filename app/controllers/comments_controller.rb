class CommentsController < ApplicationController
  def create
    @comment = Comment.new(:body => params[:comment][:body])
    @post = Post.find(params[:post_id])

    @comment.post = @post
    @comment.user = current_user

    @comment.user_id = current_user.id

    @comment.user.save

    puts params[:comment]

    puts '-'
    puts @comment.user
    puts @comment.post
    puts @comment.attributes
    puts @comment.user.name

    if @comment.save
      # @post.comments.push(@comment)
      redirect_to @post
    else
      puts 'COULDNT SAVE'
    end

  end

  private

  def comment_params
    params.permit[:body]
  end
end
