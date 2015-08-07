class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @user = current_user
    @comment = Comment.find(params[:id]) # Finding my comment id
    @show_user = @comment[:user_email]
    @post = Post.find(params[:post_id]) # Finding my post id
  end

  def new ## this needs to render the post id (from the route) and that a comment is going to be new
    @user = current_user
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id]) # Finding the post id
    @comment = @post.comments.create!(comment_params)
    @comment.user = current_user # Set the user who posts the comment
    @comment.save
    redirect_to post_path(@post)
  end

  def edit # This is going to need the post id and the comment id, (the form should be pre filled in)
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @user = current_user
  end

  def update
    @post = Post.find(params[:post_id])
    @user = current_user
    @comment = Comment.find(params[:id])

    if @comment.user_id == current_user.id # A comment can only be edited by user who created the comment
      @comment.update(comment_params)
      redirect_to post_comment_path(@post, @comment)
    else
      redirect_to post_comment_path(@post, @comment)
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])

    if @comment.user_id == current_user.id # A comment can only be deleted by user who created the comment
      @comment.destroy
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:subject, :comment, :user_email)
  end
end
