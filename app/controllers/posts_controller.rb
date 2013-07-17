class PostsController <ApplicationController

  def index
    @name = "Rachel"
    @posts = Post.all
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

  # def update
  #   @post = Post.find(params[:id])
  # end
  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to post_path(@post), notice: 'Post was successfully updated!'}
      else
        format.html { render action: 'edit', notice: 'Error!  Post was not updated.'}
      end
    end
  end

end