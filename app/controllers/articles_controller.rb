class ArticlesController < ApplicationController
  respond_to :js, :html
  before_action :set_article, only: [:update, :edit, :destroy, :show]

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
    article = Article.create(article_params)
    article.assets.create(asset_params)
    redirect_to article_path(article), notice: "Item was successfully created!"
  end

  def update
    @article.update!(article_params)
    @article.assets.create(asset_params)
    respond_to do |format|
      format.js
      format.html { redirect_to @article }
    end
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

  def asset_params
    params.require(:article).permit(:image, :id)
  end

end
