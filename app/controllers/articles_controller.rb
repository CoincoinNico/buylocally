class ArticlesController < ApplicationController
  before_action :set_article, only: [:update, :edit, :destroy, :show]

  layout "application", only: [:index]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.create(article_params)
    flash[:info] = "You've successfully created your item"
    redirect_to @article
  end

  def update
    @article.update!(article_params)
    flash[:info] = "You've successfully updated your item"
    redirect_to @article
  end

  def destroy
    @article.destroy
    flash[:info] = "You've successfully deleted your item"
    redirect_to articles_path
  end

private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :price, :quantity)
  end

end
