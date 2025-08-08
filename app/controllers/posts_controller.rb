class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  def index
    @posts = Post.includes(:user, :category, :comments)
    
    if params[:category_id].present?
      @posts = @posts.by_category(params[:category_id])
    end
    
    if params[:college].present?
      @posts = @posts.by_college(params[:college])
    end
    
    @posts = @posts.recent.page(params[:page]).per(20)
    @categories = Category.all
    @colleges = User.distinct.pluck(:college).compact
  end

  def show
    @comments = @post.comments.includes(:user).recent
    @comment = Comment.new
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @post = current_user.posts.build(post_params)
    @categories = Category.all

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @categories = Category.all
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      @categories = Category.all
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: 'Post was successfully deleted.'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :category_id)
  end

  def authorize_user!
    unless @post.user == current_user
      redirect_to @post, alert: 'You are not authorized to perform this action.'
    end
  end
end
