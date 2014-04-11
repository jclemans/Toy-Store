class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    if @product.save
      flash[:notice] = 'New product added!'
      redirect_to root_url
    else
      render new_product_path
    end
  end


private
  def product_params
    params.require(:product).permit(:name, :price, :description)
  end
end
