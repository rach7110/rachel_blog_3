class PostsController <ApplicationController

  def index
    @name = "Rachel"
    @post = Post.all
  end

  def new
    @post = Post.new
  end
end