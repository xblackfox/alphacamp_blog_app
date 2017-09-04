class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post_params = params[:post].permit(:title, :author, :content )
    post= Post.create(post_params)
    redirect_to post_path(id: post.id)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post_params = params[:post].permit(:title, :author, :content )
    post= Post.find(params[:id])
    Post.update(post_params)
    redirect_to post_path(id: post.id)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path


    end
  end
