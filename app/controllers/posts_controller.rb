class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save
    redirect_to post_path(@post.id)
  end

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def update
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save
    redirect_to post_path(@post.id)
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end
end
