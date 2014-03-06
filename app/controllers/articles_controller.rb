class ArticlesController < ApplicationController
  def show
    @article = Article.find_by_id(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    Article.create!(params[:article])
  end
end
