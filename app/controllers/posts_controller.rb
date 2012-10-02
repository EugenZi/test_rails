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
    Post.create(params[:post]).save
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
