class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote, :pin, :unpin]
  before_action :authorize_user!, only: [:edit, :update, :destroy]
  before_action :authorize_moderator!, only: [:pin, :unpin]

  def index
    @posts = Post.includes(:user, :category, :comments)
    
    # Filter by category
    if params[:category_id].present?
      @posts = @posts.by_category(params[:category_id])
    end
    
    # Filter by college
    if params[:college].present?
      @posts = @posts.by_college(params[:college])
    end
    
    # Sort posts
    case params[:sort]
    when 'oldest'
      @posts = @posts.order(created_at: :asc)
    when 'comments'
      @posts = @posts.left_joins(:comments).group(:id).order('COUNT(comments.id) DESC')
    else
      @posts = @posts.recent
    end
    
    @posts = @posts.page(params[:page]).per(20)
    @categories = Category.all
    @colleges = User.distinct.pluck(:college).compact
  end

  def show
    @comments = @post.comments.includes(:user).recent.page(params[:page]).per(10)
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    
    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: 'Post was successfully deleted.'
  end

  def upvote
    @post.upvote!
    redirect_back(fallback_location: @post)
  end

  def downvote
    @post.downvote!
    redirect_back(fallback_location: @post)
  end

  def pin
    @post.update(pinned: true)
    redirect_back(fallback_location: @post, notice: 'Post pinned successfully.')
  end

  def unpin
    @post.update(pinned: false)
    redirect_back(fallback_location: @post, notice: 'Post unpinned successfully.')
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def authorize_user!
    unless @post.user == current_user
      redirect_to @post, alert: 'You are not authorized to perform this action.'
    end
  end

  def authorize_moderator!
    unless current_user.can_moderate?
      redirect_to @post, alert: 'You are not authorized to perform this action.'
    end
  end

  def post_params
    params.require(:post).permit(:title, :content, :category_id)
  end
end
