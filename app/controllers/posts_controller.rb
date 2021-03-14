class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :move_to_index, only: [:edit, :update]

  def index
    @posts = Post.includes(:user).order('created_at desc')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    unless @post.save
      @post
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    unless @post.update(post_params)
      @post
      render :edit
    end
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:image, :title, :text, :area_id).merge(user_id: current_user.id)
  end

  def move_to_index
    @post = Post.find(params[:id])
    if @post.user_id != current_user.id
      redirect_to root_path
    end
  end

end
