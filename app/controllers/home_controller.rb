class HomeController < ApplicationController
  def index
    params[:sort] == "recent" ? @posts = Post.all.sort_by(&:created_at).reverse.take(20) : @posts = Post.all.sort_by(&:popularity).reverse.take(20)
  end
end
