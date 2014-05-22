class PicturesController < ApplicationController
  before_action :set_article

  respond_to :html, :js

  layout "articles"

  def new
    @picture = @article.pictures.build
  end

  def create
    @article.pictures.create!(picture_params) if params[:picture]
    respond_to do |format|
      format.js
    end
  end


  def edit
  end

  def update
  end

  def destroy
    Picture.find(params[:id]).destroy
  end

  private

  def picture_params
    params.require(:picture).permit(:file)
  end

  def set_article
    @article = Article.find(params[:article_id])
  end

end
