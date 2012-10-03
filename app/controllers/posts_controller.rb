class PostsController < ApplicationController
  
  def initialize
    @themes = Theme.all
    super
  end
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
      post = Post.create(params[:post]).save
  end

  def show
    @post = Post.find_by_id(params[:id])
    @comment = Comment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end
  
  def theme
    @posts = Post.where("theme_id = ?" , params[:id])
    render "index"
  end
  def comment
    comment = Comment.create(params[:comment])
    if comment.save
      flash[:notice] = 'Saved!'
    end
    @post = Post.find_by_id(params[:comment][:post_id])
    respond_to do |format|
      format.json {render :json => @post.comments } 
      format.html { render "show.html.erb"}
    end
  end
  
  
end
