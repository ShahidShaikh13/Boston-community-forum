class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:posts).all
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts.includes(:user, :comments).recent.page(params[:page]).per(20)
  end
end
