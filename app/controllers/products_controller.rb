class ProductsController < ApplicationController
  before_action :set_product, only:[:show, :edit , :update, :destroy]
  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @product.update!(product_params)
    redirect_to @product
  end

  def destroy
    @product.destroy!
    redirect_to products_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :photo)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
