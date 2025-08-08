class HomeController < ApplicationController
  def index
    @recent_posts = Post.includes(:user, :category).recent.limit(10)
    @categories = Category.includes(:posts).all
    @colleges = User.distinct.pluck(:college).compact
  end
end
