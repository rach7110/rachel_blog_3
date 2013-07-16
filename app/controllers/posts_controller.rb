class PostsController <ApplicationController

  def index
    @name = "Rachel"
    @post = Post.all
  end
end