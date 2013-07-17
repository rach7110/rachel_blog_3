class PostsController <ApplicationController

  def index
    @name = "Rachel"
    @post = Post.all
    # respond_to do |format|
    #   format.html # show default view
    #   format.json {render json: @products}
    # end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create 
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post
    else
      render action: 'new'
    end
  end

end