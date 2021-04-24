class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]
  before_action :set_sort, only: [:index, :search]

  def index
    @posts = if sort_params.present?
               Post.includes(:user).order(sort_params[:sort])
             else
               Post.includes(:user).order('created_at DESC')
             end
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
    @posts = if sort_params.present?
               Post.search(search_params).order(sort_params[:sort])
             else
               Post.search(search_params).order('created_at DESC')
             end
    @area = Area.find(search_params[:area_id])
  end

  def search_candidate
    return nil if search_params[:keyword] == ''

    title = Post.where(['title LIKE ?', "%#{search_params[:keyword]}%"])
    render json: { keyword: title }
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

  def search_params
    params.permit(:keyword, :area_id)
  end

  def sort_params
    params.permit(:sort)
  end

  def set_sort
    @sort_list = Post.sort_list
    @soted = sort_params[:sort]
  end
end
