class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #新規投稿
  def new
    @post = Post.new(post:"")
  end
end
