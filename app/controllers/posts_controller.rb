class PostsController < ApplicationController

  #投稿一覧
  def index

    @posts = Post.order("id DESC") #IDを逆順に並べる

    @post = Post.new

    # @comments = @posts.comments
    if params[:id]
      like=Post.find(params[:id])
      count = like.like + 1
      like.update_attribute(:like, count)
      @counter = likea
    end


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

    if params[:idc]
      like=Post.find(params[:id])
      count = like.like + 1
      like.update_attribute(:like, count)
      @counter = like
    end

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
      render "index"
    end
  end

  def update
  end

  def destroy
  end

  def like


  end
  private
  def post_params
    params.require(:post).permit(:id,:post,:like, :created_at, :updated_at)
  end

end
