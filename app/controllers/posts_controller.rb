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

  # this is for the new form:
  def new
    @post = Post.new
  end

  def create 
    @post = Post.new(params[:post])
    if @post.save
      redirect_to post_path(@post.id)
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

    # option 1 - updating post:
    # @post.title = params[:post][:title]
    # @post.body = params[:post][:body]
    # @post.save

     # option 2 - updating post:
     # @post.update_attributes(
     #  title: params[:post][:title],
     #  body: params[:post][:body]
     # )
    

     # option 3 - updating post:
     # @post.update_attributes("title"=>"new again!", "body"=>"Boo!")
    

    # if @post.save
    #   redirect_to post_path(@post.id), {notice: 'Post was successfully updated!'}
    # else
    #   render action: 'new'
    # end




    respond_to do |format|
       # option 4 - updating post:
      if @post.update_attributes(params[:post])
        format.html { redirect_to post_path(@post), notice: 'Post was successfully updated!'}
      else
        
      end
    end
  end

end