class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
    @users = User.all
  end

  def new

  end

  def create
    @post = Post.new(
      content: params[:content],
      title: params[:title],
      user_id: @current_user.id
    )
    @post.save
    redirect_to("/")
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = @post.user
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    @post.save
    redirect_to("/")
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/")
  end

end
