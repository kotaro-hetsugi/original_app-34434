class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    @posts = Post.includes(:user).order('created_at desc')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    render :new unless @post.save
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def edit
  end

  def update
    render :edit unless @post.update(post_params)
  end

  def destroy
    @post.destroy
  end

  def search
    @posts = Post.search(params)
    @area = Area.find(params[:area_id])
  end

  def search_candidate
    return nil if params[:keyword] == ""
    title = Post.where(['title LIKE ?', "%#{params[:keyword]}%"] )
    render json:{ keyword: title }
  end

  private

  def post_params
    params.require(:post).permit(:image, :title, :text, :area_id, :score).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to root_path if @post.user_id != current_user.id
  end

end
