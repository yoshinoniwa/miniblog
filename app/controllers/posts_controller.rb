class PostsController < ApplicationController
  #投稿一覧
  def index
    @posts = Post.all #全ての情報を取り出す
  end
  #投稿の詳細
  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
