class PostsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  def index
  end

  def show
    puts "---------"
    puts params
    puts "---------"

    begin
      @post = Post.find(params[:post_id])
    rescue
      @post = Post.find(params[:id])
    end

    @comment = Comment.new
    @current_user = current_user

    puts @post.attributes
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.user_id = current_user.id

    @post.upvotes = 0
    @post.downvotes = 0

    @post.upvoted_by_id = 0
    @post.upvoted_by_id = 0

    if @post.save
      redirect_to @post
    else
      render 'new'
    end

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])


    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end

  end

  def destroy
  end

  def like
    @post = Post.find(params[:id])
    puts @post.attributes

    if @post.upvoted_bys.include?(current_user)
      @post.upvoted_bys.push(current_user)
      @post.upvotes += 1
    end
    puts @post.upvotes
    puts "LIKE"
    redirect_to @post

  end

  def dislike
  end

  private

  def post_params
    return params.require(:post).permit(:title, :body)
  end
end
