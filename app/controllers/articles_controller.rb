class ArticlesController < ApplicationController
  before_action :set_article, only: [:update, :edit, :destroy, :show]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    article_params = params.require(:article).permit(:title, :description, :price, :quantity)
    article = Article.create(article_params)

    redirect_to article_path(article)
  end

  def update
    article_params = params.require(:article).permit(:title, :description, :price, :quantity)
    @article.update!(article_params)

    flash[:info] = "You've successfully updated your article"

    redirect_to article_path(article)
  end

  def edit
  end

  def destroy
    @article.destroy

    flash[:info] = "You've successfully deleted your article"

    redirect_to articles_path
  end

private

  def set_article
    @article = Article.find(params[:id])
  end

end