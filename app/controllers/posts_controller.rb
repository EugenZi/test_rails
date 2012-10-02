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
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  def theme
    @posts = Post.where("theme_id = ?" , params[:id])
    render "index"
  end
  
end
