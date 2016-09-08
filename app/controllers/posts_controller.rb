class PostsController < ApplicationController
  def new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save
  end

  def index
    @posts = Post.all
  end
end
