class ProductsController < ApplicationController

  def get_product
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = 'New product added!'
      redirect_to root_path
    else
      render new_product_path
    end
  end

  def show
    get_product
  end

  def edit
    get_product
  end

  def update
    get_product
    @product.update(product_params)
    redirect_to product_path
  end

  def destroy
    get_product
    @product.destroy
    redirect_to root_path
  end

private
  def product_params
    params.require(:product).permit(:name, :price, :description)
  end
end
