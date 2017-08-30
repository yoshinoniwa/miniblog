class CommentsController < ApplicationController
  def index
    @comment = Comment.new(comment:"")
    # ネストされたリソースを扱うかどうか
    if params[:post_id]
      @post = Post.find(params[:post_id])
      @comments = @post.comments

    else
      @comments = Comment.all
    end
  end

  def show
  end

  def new
    @comment = Comment.new(comment:"")
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post_id = @post.id
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      render "new"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :created_at, :updated_at)
  end
end
