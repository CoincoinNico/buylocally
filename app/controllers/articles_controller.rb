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

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      if params[:images]
        params[:images].each { |image|
          @article.assets.create(image: image)
        }
      end
    redirect_to @article, notice: "Item was successfully created!"
    end
  end

  def update
    if params[:images]
      params[:images].each do |image|
        @article.assets.create(image: image)
      end
    else
      @article.update!(article_params)
    end
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
    params.require(:article).permit(:title, :description, :price, :quantity, assets_attributes: [:id, :image] )
  end

end
