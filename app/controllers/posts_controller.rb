class PostsController < ApplicationController

  #投稿一覧
  def index

    @posts = Post.order("id DESC") #IDを逆順に並べる
    @post = Post.new(post:"")

  end
  #投稿の詳細
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new(comment:"")
    # like = @post.like
    # likenum = like.to_i
    # @addnum = :count
    # # addintnum = addnum.to_i



  end
  #新規投稿
  def new
    @post = Post.new(post:"")


  end
  #更新フォーム
  def edit
    @post = Post.find(params[:id])
  end
  #投稿を登録
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_back(fallback_location: root_path)
    else
      render "new"
    end
  end

  def update
  end

  def destroy
  end

  def like
    @post = Post.find(params[:id])

    getlike = @post.like
    count = count.to_i + 1
    @like = Post.new(like: count)

  end
  private
  def post_params
    params.require(:post).permit(:id,:post, :created_at, :updated_at)
  end
end
