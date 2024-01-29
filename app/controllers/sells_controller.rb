class SellsController < ApplicationController
  def index
    @sells = Sell.includes(:products).all
  end

  def new
    @sell = Sell.new
    @products = Product.all
  end

  def show
    @sell = Sell.find(params[:id])
    # Add any additional logic you need for displaying a single sell
  end

  def create
    @sell = Sell.new(sell_params)

    # Set the creation time
    @sell.created_at = Time.now

    # Assuming you have a method to calculate the total based on the product
    @sell.total = calculate_total(@sell.products)

    if @sell.save
      redirect_to sells_path
    else
      render 'new'
    end
  end

  private

  def sell_params
    params.require(:sell).permit(:product_id, :user_id, product_ids: [])
  end

  def calculate_total(product_ids)
    # Implement your logic to calculate the total based on the product
    # For example, you can sum the prices of selected products
    Product.where(id: product_ids).sum(&:price)
  end
end
