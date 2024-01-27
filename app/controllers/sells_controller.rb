class SellsController < ApplicationController
  def index
    @sells = Sell.where(user: current_user)
    @products = Product.all
  end

  def new
    @sell = Sell.new
    @product = Product.find(params[:product_id])
  end

  def create
    @sell = Sell.new(sell_params)
    @product = Product.find(params[:product_id])

    # Associate the product with the sell
    @sell.products << @product

    # Set the creation time
    @sell.created_at = Time.now

    # Assuming you have a method to calculate the total based on the product
    @sell.total = calculate_total(@product)

    if @sell.save
      redirect_to product_sells_path(@product)
    else
      render 'new'
    end
  end

  private

  def sell_params
    params.require(:sell).permit(:product_id, :user_id, :product_ids)
  end

  def calculate_total(product)
    # Implement your logic to calculate the total based on the product
    # For example, you can use product.price
    product.price
  end
end
