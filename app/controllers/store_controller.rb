class StoreController < ApplicationController
  skip_before_filter :authorize

  def index
    @pro=Product.all
    @cart = current_cart
    if params[:set_locale]
redirect_to store_path(:locale => params[:set_locale])
else
@products = Product.all
@cart = current_cart
end
end


    respond_to do|format|
      format.html      
    end
  end

