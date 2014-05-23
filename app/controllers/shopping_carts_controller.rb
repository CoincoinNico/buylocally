class ShoppingCartsController < ApplicationController
   before_filter :extract_shopping_cart


  def add_to_cart
    @article = Article.find(params[:article_id])
    @shopping_cart.add(@article, @article.price)
    redirect_to show_path
  end


  def show

  end

  def remove_from_cart
    @shopping_cart.shopping_cart_items.find(params[:article_id]).destroy
    redirect_to show_path
  end

private

  def extract_shopping_cart
    if session[:shopping_cart_id]
      @shopping_cart = ShoppingCart.find(session[:shopping_cart_id])
    else
      @shopping_cart = ShoppingCart.create
      session[:shopping_cart_id] = @shopping_cart.id
    end
  end

end


