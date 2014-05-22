class ShoppingCartsController < ApplicationController
   before_action :set_article, only: [:update, :edit, :destroy, :show, :add_to_cart]



  def show

  end

  def add_to_cart
    @cart = session[:cart_id] ? ShoppingCart.find(session[:cart_id]) : ShoppingCart.create
    session[:cart_id] = @cart.id

    @cart.add(@article, @article.price)

    redirect_to articles_path

  end

  def create
    @article = Article.find(params[:id])
    @shopping_cart.add(@product, @product.price)
    redirect_to shopping_cart_path
  end

  private

  def set_article
    @article = Article.find(params[:id])

  end

end